.class final Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
.super Ljava/lang/Object;
.source "ExpandedNameTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/ExpandedNameTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HashEntry"
.end annotation


# instance fields
.field hash:I

.field key:Lorg/apache/xml/dtm/ref/ExtendedType;

.field next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

.field value:I


# direct methods
.method protected constructor <init>(Lorg/apache/xml/dtm/ref/ExtendedType;IILorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;)V
    .locals 0
    .param p1, "key"    # Lorg/apache/xml/dtm/ref/ExtendedType;
    .param p2, "value"    # I
    .param p3, "hash"    # I
    .param p4, "next"    # Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@0
    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 384
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->key:Lorg/apache/xml/dtm/ref/ExtendedType;

    #@5
    .line 385
    iput p2, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->value:I

    #@7
    .line 386
    iput p3, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->hash:I

    #@9
    .line 387
    iput-object p4, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@b
    .line 382
    return-void
.end method
