.class public final synthetic Lcom/android/ims/ImsManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/ImsManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/ImsManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda10;->f$0:Lcom/android/ims/ImsManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda10;->f$0:Lcom/android/ims/ImsManager;

    check-cast p1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->$r8$lambda$7Ha_oiEH6bNb9qXwJso80y9WJBQ(Lcom/android/ims/ImsManager;Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z

    move-result p1

    return p1
.end method
