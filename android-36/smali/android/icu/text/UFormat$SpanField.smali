.class public abstract Landroid/icu/text/UFormat$SpanField;
.super Ljava/text/Format$Field;
.source "UFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanField"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x41adff5193cc91ceL


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method
