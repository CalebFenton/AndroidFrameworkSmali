.class public final Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/dom3/NamespaceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "Prefixes"
.end annotation


# instance fields
.field private greylist counter:I

.field private greylist prefixes:[Ljava/lang/String;

.field private greylist size:I

.field final synthetic greylist this$0:Lorg/apache/xml/serializer/dom3/NamespaceSupport;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/serializer/dom3/NamespaceSupport;[Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 281
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->this$0:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 275
    iput p1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->counter:I

    .line 282
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->prefixes:[Ljava/lang/String;

    .line 283
    iput p3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->size:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 2

    .line 290
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->counter:I

    iget p0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->size:I

    if-ge v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .registers 4

    .line 297
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->counter:I

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->size:I

    if-ge v0, v1, :cond_11

    .line 298
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->this$0:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    iget-object v1, v1, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->counter:I

    aget-object p0, v1, v0

    return-object p0

    .line 300
    :cond_11
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Illegal access to Namespace prefixes enumeration."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 304
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 305
    :goto_6
    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->size:I

    if-ge v1, v2, :cond_19

    .line 306
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->prefixes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 310
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
