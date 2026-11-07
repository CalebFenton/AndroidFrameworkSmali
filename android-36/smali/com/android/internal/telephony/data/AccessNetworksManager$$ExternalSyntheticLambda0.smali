.class public final synthetic Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/AccessNetworksManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    return-void
.end method


# virtual methods
.method public final whitelist onCarrierConfigChanged(IIII)V
    .registers 5

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/AccessNetworksManager;->$r8$lambda$jfYKKXXf3GT9Ms8j3hzXW2Z-cwo(Lcom/android/internal/telephony/data/AccessNetworksManager;IIII)V

    return-void
.end method
