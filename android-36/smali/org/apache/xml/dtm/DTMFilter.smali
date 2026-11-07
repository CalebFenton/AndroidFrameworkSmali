.class public interface abstract Lorg/apache/xml/dtm/DTMFilter;
.super Ljava/lang/Object;
.source "DTMFilter.java"


# static fields
.field public static final greylist SHOW_ALL:I = -0x1

.field public static final greylist SHOW_ATTRIBUTE:I = 0x2

.field public static final greylist SHOW_BYFUNCTION:I = 0x10000

.field public static final greylist SHOW_CDATA_SECTION:I = 0x8

.field public static final greylist SHOW_COMMENT:I = 0x80

.field public static final greylist SHOW_DOCUMENT:I = 0x100

.field public static final greylist SHOW_DOCUMENT_FRAGMENT:I = 0x400

.field public static final greylist SHOW_DOCUMENT_TYPE:I = 0x200

.field public static final greylist SHOW_ELEMENT:I = 0x1

.field public static final greylist SHOW_ENTITY:I = 0x20

.field public static final greylist SHOW_ENTITY_REFERENCE:I = 0x10

.field public static final greylist SHOW_NAMESPACE:I = 0x1000

.field public static final greylist SHOW_NOTATION:I = 0x800

.field public static final greylist SHOW_PROCESSING_INSTRUCTION:I = 0x40

.field public static final greylist SHOW_TEXT:I = 0x4


# virtual methods
.method public abstract greylist acceptNode(II)S
.end method

.method public abstract greylist acceptNode(III)S
.end method
