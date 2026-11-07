.class public Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;
.super Landroid/os/AsyncTask;
.source "AsyncEmergencyContactNotifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/provider/BlockedNumberContract$SystemContract;->notifyEmergencyContact(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1d

    :catch_6
    move-exception p0

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception notifying emergency contact: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AsyncEmergencyContactNotifier"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    const/4 p0, 0x0

    return-object p0
.end method
