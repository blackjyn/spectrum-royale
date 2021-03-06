package com.unhurdle.spectrum
{
  COMPILE::JS
  {
    import org.apache.royale.core.WrappedHTMLElement;
    import org.apache.royale.html.util.addElementToWrapper;
  }

  public class TextBase extends SpectrumBase
  {
    public function TextBase()
    {
      super();
    }

    public function get text():String
    {
      COMPILE::SWF{return ""}
      COMPILE::JS
      {
        if(!textNode){
          return "";
        }
      	return textNode.text;
      }
    }

    public function set text(value:String):void
    {
      COMPILE::JS
      {
        if(!textNode){
          createTextNode();
        }
      	textNode.text = value;
      }
    }
    COMPILE::JS
    protected var textNode:TextNode;

    COMPILE::JS
    protected function createTextNode():void{
      textNode = new TextNode("");
      textNode.element = element;
    }

  }
}