.class public abstract Lorg/apache/xml/utils/XMLStringFactory;
.super Ljava/lang/Object;
.source "XMLStringFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract emptystr()Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract newstr([CII)Lorg/apache/xml/utils/XMLString;
.end method
