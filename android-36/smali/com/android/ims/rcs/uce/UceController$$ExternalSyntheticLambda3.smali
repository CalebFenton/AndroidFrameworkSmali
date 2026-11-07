.class public final synthetic Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/rcs/uce/UceController;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/UceController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda3;->f$0:Lcom/android/ims/rcs/uce/UceController;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda3;->f$0:Lcom/android/ims/rcs/uce/UceController;

    check-cast p1, Landroid/telephony/ims/SipDetails;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/UceController;->$r8$lambda$Hvl5EtzRUiESfdTXyBXuLCbW0XM(Lcom/android/ims/rcs/uce/UceController;Landroid/telephony/ims/SipDetails;)V

    return-void
.end method
