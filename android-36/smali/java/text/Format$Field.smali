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
.field private static final whitelist serialVersionUID:J = 0x3d7fbbd383b0f9bL


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 362
    invoke-direct {p0, p1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    .line 363
    return-void
.end method
