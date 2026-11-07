.class public final Landroid/util/MutableBoolean;
.super Ljava/lang/Object;
.source "MutableBoolean.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist value:Z


# direct methods
.method public constructor whitelist <init>(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Landroid/util/MutableBoolean;->value:Z

    .line 29
    return-void
.end method
