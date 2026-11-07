.class public abstract Landroid/webkit/RenderProcessGoneDetail;
.super Ljava/lang/Object;
.source "RenderProcessGoneDetail.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist didCrash()Z
.end method

.method public abstract whitelist rendererPriorityAtExit()I
.end method
