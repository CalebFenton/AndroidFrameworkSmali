.class public final Landroid/nfc/dta/NfcDta;
.super Ljava/lang/Object;
.source "NfcDta.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "NfcDta"

.field private static blacklist sNfcDtas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Landroid/nfc/dta/NfcDta;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sService:Landroid/nfc/INfcDta;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/dta/NfcDta;->sNfcDtas:Ljava/util/HashMap;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/nfc/INfcDta;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/nfc/INfcDta;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/dta/NfcDta;->mContext:Landroid/content/Context;

    .line 41
    sput-object p2, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    .line 42
    return-void
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/dta/NfcDta;
    .registers 7
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    const-class v0, Landroid/nfc/dta/NfcDta;

    monitor-enter v0

    .line 51
    if-eqz p0, :cond_45

    .line 52
    :try_start_5
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_36

    .line 58
    sget-object v2, Landroid/nfc/dta/NfcDta;->sNfcDtas:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/dta/NfcDta;

    .line 59
    .local v2, "manager":Landroid/nfc/dta/NfcDta;
    if-nez v2, :cond_34

    .line 60
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getNfcDtaInterface()Landroid/nfc/INfcDta;

    move-result-object v3

    .line 61
    .local v3, "service":Landroid/nfc/INfcDta;
    if-eqz v3, :cond_27

    .line 65
    new-instance v4, Landroid/nfc/dta/NfcDta;

    invoke-direct {v4, v1, v3}, Landroid/nfc/dta/NfcDta;-><init>(Landroid/content/Context;Landroid/nfc/INfcDta;)V

    move-object v2, v4

    .line 66
    sget-object v4, Landroid/nfc/dta/NfcDta;->sNfcDtas:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 62
    :cond_27
    const-string v4, "NfcDta"

    const-string v5, "This device does not implement the INfcDta interface."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_43

    .line 68
    .end local v3    # "service":Landroid/nfc/INfcDta;
    :cond_34
    :goto_34
    monitor-exit v0

    return-object v2

    .line 54
    .end local v2    # "manager":Landroid/nfc/dta/NfcDta;
    :cond_36
    :try_start_36
    const-string v2, "NfcDta"

    const-string v3, "NfcAdapter context is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 50
    .end local v1    # "context":Landroid/content/Context;
    .end local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :catchall_43
    move-exception p0

    goto :goto_4d

    .line 51
    .restart local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_45
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "NfcAdapter is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_43

    throw p0
.end method


# virtual methods
.method public blacklist disableClient()Z
    .registers 3

    .line 148
    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v0}, Landroid/nfc/INfcDta;->disableClient()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    .line 151
    nop

    .line 152
    const/4 v0, 0x1

    return v0

    .line 149
    :catch_8
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist disableDta()Z
    .registers 3

    .line 92
    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v0}, Landroid/nfc/INfcDta;->disableDta()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    .line 95
    nop

    .line 96
    const/4 v0, 0x1

    return v0

    .line 93
    :catch_8
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist disableServer()Z
    .registers 3

    .line 120
    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v0}, Landroid/nfc/INfcDta;->disableServer()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    .line 123
    nop

    .line 124
    const/4 v0, 0x1

    return v0

    .line 121
    :catch_8
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist enableClient(Ljava/lang/String;III)Z
    .registers 7
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "miu"    # I
    .param p3, "rwSize"    # I
    .param p4, "testCaseId"    # I

    .line 135
    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/nfc/INfcDta;->enableClient(Ljava/lang/String;III)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 136
    :catch_7
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist enableDta()Z
    .registers 3

    .line 78
    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v0}, Landroid/nfc/INfcDta;->enableDta()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    .line 81
    nop

    .line 82
    const/4 v0, 0x1

    return v0

    .line 79
    :catch_8
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist enableServer(Ljava/lang/String;IIII)Z
    .registers 12
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "miu"    # I
    .param p4, "rwSize"    # I
    .param p5, "testCaseId"    # I

    .line 107
    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_f

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "serviceName":Ljava/lang/String;
    .end local p2    # "serviceSap":I
    .end local p3    # "miu":I
    .end local p4    # "rwSize":I
    .end local p5    # "testCaseId":I
    .local v1, "serviceName":Ljava/lang/String;
    .local v2, "serviceSap":I
    .local v3, "miu":I
    .local v4, "rwSize":I
    .local v5, "testCaseId":I
    :try_start_7
    invoke-interface/range {v0 .. v5}, Landroid/nfc/INfcDta;->enableServer(Ljava/lang/String;IIII)Z

    move-result p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return p1

    .line 108
    :catch_c
    move-exception v0

    move-object p1, v0

    goto :goto_16

    .end local v1    # "serviceName":Ljava/lang/String;
    .end local v2    # "serviceSap":I
    .end local v3    # "miu":I
    .end local v4    # "rwSize":I
    .end local v5    # "testCaseId":I
    .restart local p1    # "serviceName":Ljava/lang/String;
    .restart local p2    # "serviceSap":I
    .restart local p3    # "miu":I
    .restart local p4    # "rwSize":I
    .restart local p5    # "testCaseId":I
    :catch_f
    move-exception v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object p1, v0

    .line 109
    .end local p2    # "serviceSap":I
    .end local p3    # "miu":I
    .end local p4    # "rwSize":I
    .end local p5    # "testCaseId":I
    .restart local v1    # "serviceName":Ljava/lang/String;
    .restart local v2    # "serviceSap":I
    .restart local v3    # "miu":I
    .restart local v4    # "rwSize":I
    .restart local v5    # "testCaseId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_16
    const/4 p2, 0x0

    return p2
.end method

.method public blacklist registerMessageService(Ljava/lang/String;)Z
    .registers 4
    .param p1, "msgServiceName"    # Ljava/lang/String;

    .line 162
    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {v0, p1}, Landroid/nfc/INfcDta;->registerMessageService(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 163
    :catch_7
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method
