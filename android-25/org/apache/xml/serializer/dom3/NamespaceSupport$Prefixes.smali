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
.field private counter:I

.field private prefixes:[Ljava/lang/String;

.field private size:I

.field final synthetic this$0:Lorg/apache/xml/serializer/dom3/NamespaceSupport;


# direct methods
.method public constructor <init>(Lorg/apache/xml/serializer/dom3/NamespaceSupport;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xml/serializer/dom3/NamespaceSupport;
    .param p2, "prefixes"    # [Ljava/lang/String;
    .param p3, "size"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 281
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->this$0:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 275
    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->counter:I

    #@8
    .line 276
    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->size:I

    #@a
    .line 282
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->prefixes:[Ljava/lang/String;

    #@c
    .line 283
    iput p3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->size:I

    #@e
    .line 281
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    #@0
    .prologue
    .line 290
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->counter:I

    #@2
    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->size:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 297
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->counter:I

    #@2
    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->size:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 298
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->this$0:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    #@8
    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    #@a
    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->counter:I

    #@c
    add-int/lit8 v2, v1, 0x1

    #@e
    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->counter:I

    #@10
    aget-object v0, v0, v1

    #@12
    return-object v0

    #@13
    .line 300
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    #@15
    const-string/jumbo v1, "Illegal access to Namespace prefixes enumeration."

    #@18
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 305
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->size:I

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 306
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->prefixes:[Ljava/lang/String;

    #@c
    aget-object v2, v2, v1

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    .line 307
    const-string/jumbo v2, " "

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    .line 305
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 310
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    return-object v2
.end method
