.class public Ljava/text/Format$Field;
.super Ljava/text/AttributedCharacterIterator$Attribute;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3d7fbbd383b0f9bL


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 247
    invoke-direct {p0, p1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    #@3
    .line 246
    return-void
.end method
