.class public final synthetic Lcom/android/internal/telephony/IccSmsInterfaceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field public final synthetic blacklist f$1:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/app/PendingIntent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iput-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$$ExternalSyntheticLambda0;->f$1:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final blacklist onSmsInjectedResult(I)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$$ExternalSyntheticLambda0;->f$1:Landroid/app/PendingIntent;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->$r8$lambda$Hx63kuLa_adeTNT01Jpq2CubQx0(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/app/PendingIntent;I)V

    return-void
.end method
