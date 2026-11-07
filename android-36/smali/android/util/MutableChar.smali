.class public final Landroid/util/MutableChar;
.super Ljava/lang/Object;
.source "MutableChar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist value:C


# direct methods
.method public constructor whitelist <init>(C)V
    .registers 2
    .param p1, "value"    # C

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-char p1, p0, Landroid/util/MutableChar;->value:C

    .line 29
    return-void
.end method
