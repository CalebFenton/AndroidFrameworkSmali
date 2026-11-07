.class public final synthetic Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist create(Landroid/content/Context;Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;
    .registers 3

    .line 0
    new-instance p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;)V

    return-object p0
.end method
