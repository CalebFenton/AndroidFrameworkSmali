.class public interface abstract Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;
.super Ljava/lang/Object;
.source "RcsUceAdapter.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsUceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPublishStateChangedListener"
.end annotation


# virtual methods
.method public abstract whitelist onPublishStateChange(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onPublishStateChange(Landroid/telephony/ims/PublishAttributes;)V
    .registers 3
    .param p1, "attributes"    # Landroid/telephony/ims/PublishAttributes;

    .line 408
    invoke-virtual {p1}, Landroid/telephony/ims/PublishAttributes;->getPublishState()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;->onPublishStateChange(I)V

    .line 409
    return-void
.end method
