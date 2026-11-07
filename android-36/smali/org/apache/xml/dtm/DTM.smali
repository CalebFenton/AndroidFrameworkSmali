.class public interface abstract Lorg/apache/xml/dtm/DTM;
.super Ljava/lang/Object;
.source "DTM.java"


# static fields
.field public static final greylist ATTRIBUTE_NODE:S = 0x2s

.field public static final greylist CDATA_SECTION_NODE:S = 0x4s

.field public static final greylist COMMENT_NODE:S = 0x8s

.field public static final greylist DOCUMENT_FRAGMENT_NODE:S = 0xbs

.field public static final greylist DOCUMENT_NODE:S = 0x9s

.field public static final greylist DOCUMENT_TYPE_NODE:S = 0xas

.field public static final greylist ELEMENT_NODE:S = 0x1s

.field public static final greylist ENTITY_NODE:S = 0x6s

.field public static final greylist ENTITY_REFERENCE_NODE:S = 0x5s

.field public static final greylist NAMESPACE_NODE:S = 0xds

.field public static final greylist NOTATION_NODE:S = 0xcs

.field public static final greylist NTYPES:S = 0xes

.field public static final greylist NULL:I = -0x1

.field public static final greylist PROCESSING_INSTRUCTION_NODE:S = 0x7s

.field public static final greylist ROOT_NODE:S = 0x0s

.field public static final greylist TEXT_NODE:S = 0x3s


# virtual methods
.method public abstract greylist appendChild(IZZ)V
.end method

.method public abstract greylist appendTextChild(Ljava/lang/String;)V
.end method

.method public abstract greylist dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist documentRegistration()V
.end method

.method public abstract greylist documentRelease()V
.end method

.method public abstract greylist getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract greylist getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;
.end method

.method public abstract greylist getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;
.end method

.method public abstract greylist getContentHandler()Lorg/xml/sax/ContentHandler;
.end method

.method public abstract greylist getDTDHandler()Lorg/xml/sax/DTDHandler;
.end method

.method public abstract greylist getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
.end method

.method public abstract greylist getDocument()I
.end method

.method public abstract greylist getDocumentAllDeclarationsProcessed()Z
.end method

.method public abstract greylist getDocumentBaseURI()Ljava/lang/String;
.end method

.method public abstract greylist getDocumentEncoding(I)Ljava/lang/String;
.end method

.method public abstract greylist getDocumentRoot(I)I
.end method

.method public abstract greylist getDocumentStandalone(I)Ljava/lang/String;
.end method

.method public abstract greylist getDocumentSystemIdentifier(I)Ljava/lang/String;
.end method

.method public abstract greylist getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
.end method

.method public abstract greylist getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
.end method

.method public abstract greylist getDocumentVersion(I)Ljava/lang/String;
.end method

.method public abstract greylist getElementById(Ljava/lang/String;)I
.end method

.method public abstract greylist getEntityResolver()Lorg/xml/sax/EntityResolver;
.end method

.method public abstract greylist getErrorHandler()Lorg/xml/sax/ErrorHandler;
.end method

.method public abstract greylist getExpandedTypeID(I)I
.end method

.method public abstract greylist getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract greylist getFirstAttribute(I)I
.end method

.method public abstract greylist getFirstChild(I)I
.end method

.method public abstract greylist getFirstNamespaceNode(IZ)I
.end method

.method public abstract greylist getLastChild(I)I
.end method

.method public abstract greylist getLevel(I)S
.end method

.method public abstract greylist getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
.end method

.method public abstract greylist getLocalName(I)Ljava/lang/String;
.end method

.method public abstract greylist getLocalNameFromExpandedNameID(I)Ljava/lang/String;
.end method

.method public abstract greylist getNamespaceFromExpandedNameID(I)Ljava/lang/String;
.end method

.method public abstract greylist getNamespaceURI(I)Ljava/lang/String;
.end method

.method public abstract greylist getNextAttribute(I)I
.end method

.method public abstract greylist getNextNamespaceNode(IIZ)I
.end method

.method public abstract greylist getNextSibling(I)I
.end method

.method public abstract greylist getNode(I)Lorg/w3c/dom/Node;
.end method

.method public abstract greylist getNodeName(I)Ljava/lang/String;
.end method

.method public abstract greylist getNodeNameX(I)Ljava/lang/String;
.end method

.method public abstract greylist getNodeType(I)S
.end method

.method public abstract greylist getNodeValue(I)Ljava/lang/String;
.end method

.method public abstract greylist getOwnerDocument(I)I
.end method

.method public abstract greylist getParent(I)I
.end method

.method public abstract greylist getPrefix(I)Ljava/lang/String;
.end method

.method public abstract greylist getPreviousSibling(I)I
.end method

.method public abstract greylist getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
.end method

.method public abstract greylist getStringValue(I)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract greylist getStringValueChunk(II[I)[C
.end method

.method public abstract greylist getStringValueChunkCount(I)I
.end method

.method public abstract greylist getTypedAxisIterator(II)Lorg/apache/xml/dtm/DTMAxisIterator;
.end method

.method public abstract greylist getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract greylist hasChildNodes(I)Z
.end method

.method public abstract greylist isAttributeSpecified(I)Z
.end method

.method public abstract greylist isCharacterElementContentWhitespace(I)Z
.end method

.method public abstract greylist isDocumentAllDeclarationsProcessed(I)Z
.end method

.method public abstract greylist isNodeAfter(II)Z
.end method

.method public abstract greylist isSupported(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract greylist migrateTo(Lorg/apache/xml/dtm/DTMManager;)V
.end method

.method public abstract greylist needsTwoThreads()Z
.end method

.method public abstract greylist setDocumentBaseURI(Ljava/lang/String;)V
.end method

.method public abstract greylist setFeature(Ljava/lang/String;Z)V
.end method

.method public abstract greylist setProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract greylist supportsPreStripping()Z
.end method
