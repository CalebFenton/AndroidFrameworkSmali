.class public final synthetic Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/RtpHeaderExtension;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/RtpHeaderExtension;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/ims/RtpHeaderExtension;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/ims/RtpHeaderExtension;

    check-cast p1, Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/d2d/RtpTransport;->$r8$lambda$_VU1Ie2JwNtbzmA99Vhl9-nEc6o(Landroid/telephony/ims/RtpHeaderExtension;Landroid/telephony/ims/RtpHeaderExtensionType;)Z

    move-result p0

    return p0
.end method
