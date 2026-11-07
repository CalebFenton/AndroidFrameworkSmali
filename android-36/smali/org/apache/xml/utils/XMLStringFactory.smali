.class public abstract Lorg/apache/xml/utils/XMLStringFactory;
.super Ljava/lang/Object;
.source "XMLStringFactory.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist emptystr()Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract greylist newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract greylist newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;
.end method

.method public abstract greylist newstr([CII)Lorg/apache/xml/utils/XMLString;
.end method
