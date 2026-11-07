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
.field greylist hash:I

.field greylist key:Lorg/apache/xml/dtm/ref/ExtendedType;

.field greylist next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

.field greylist value:I


# direct methods
.method protected constructor greylist <init>(Lorg/apache/xml/dtm/ref/ExtendedType;IILorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;)V
    .registers 5

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->key:Lorg/apache/xml/dtm/ref/ExtendedType;

    .line 385
    iput p2, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->value:I

    .line 386
    iput p3, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->hash:I

    .line 387
    iput-object p4, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    return-void
.end method
