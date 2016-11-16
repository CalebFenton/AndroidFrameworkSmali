.class final Landroid/telecom/Log$1;
.super Landroid/os/AsyncTask;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Log;->initMd5Sum()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 54
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/telecom/Log$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 57
    :try_start_0
    const-string/jumbo v2, "SHA-1"

    #@3
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    .line 61
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->-get0()Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    monitor-enter v2

    #@c
    .line 62
    :try_start_1
    invoke-static {v1}, Landroid/telecom/Log;->-set0(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    monitor-exit v2

    #@10
    .line 64
    const/4 v2, 0x0

    #@11
    return-object v2

    #@12
    .line 58
    :catch_0
    move-exception v0

    #@13
    .line 59
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    #@14
    .local v1, "md":Ljava/security/MessageDigest;
    goto :goto_0

    #@15
    .line 61
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catchall_0
    move-exception v3

    #@16
    monitor-exit v2

    #@17
    throw v3
.end method
