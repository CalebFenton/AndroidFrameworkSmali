.class public final synthetic Lcom/android/ims/rcs/uce/util/FeatureTags$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/util/FeatureTags$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/util/FeatureTags$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/util/FeatureTags;->lambda$getContactCapability$0(Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;Ljava/lang/String;)V

    return-void
.end method
