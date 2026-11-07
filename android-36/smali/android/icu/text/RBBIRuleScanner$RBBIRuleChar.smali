.class Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;
.super Ljava/lang/Object;
.source "RBBIRuleScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RBBIRuleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RBBIRuleChar"
.end annotation


# instance fields
.field blacklist fChar:I

.field blacklist fEscaped:Z


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
