.class public Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;
.super Landroid/os/AsyncTask;
.source "AsyncEmergencyContactNotifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncEmergencyContactNotifier"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;->mContext:Landroid/content/Context;

    #@5
    .line 35
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 40
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v1}, Landroid/provider/BlockedNumberContract$SystemContract;->notifyEmergencyContact(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 46
    :goto_0
    const/4 v1, 0x0

    #@6
    return-object v1

    #@7
    .line 43
    :catch_0
    move-exception v0

    #@8
    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AsyncEmergencyContactNotifier"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Exception notifying emergency contact: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    goto :goto_0
.end method
