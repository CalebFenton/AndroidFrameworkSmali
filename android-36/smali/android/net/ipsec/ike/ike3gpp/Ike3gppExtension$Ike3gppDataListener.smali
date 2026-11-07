.class public interface abstract Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension$Ike3gppDataListener;
.super Ljava/lang/Object;
.source "Ike3gppExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Ike3gppDataListener"
.end annotation


# virtual methods
.method public abstract whitelist onIke3gppDataReceived(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/ike3gpp/Ike3gppData;",
            ">;)V"
        }
    .end annotation
.end method
