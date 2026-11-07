.class public final Landroid/os/flagging/FlagManager;
.super Ljava/lang/Object;
.source "FlagManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist FLAG_SERVICE_NAME:Ljava/lang/String; = "flag"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "unusedContext"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist clearBooleanLocalOverridesImmediately(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p1, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Landroid/os/flagging/AconfigdProtoStreamer;

    invoke-direct {v0}, Landroid/os/flagging/AconfigdProtoStreamer;-><init>()V

    .line 199
    const-wide/16 v1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/flagging/AconfigdProtoStreamer;->sendClearFlagOverrideRequests(Ljava/util/Set;J)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    .line 205
    nop

    .line 206
    return-void

    .line 203
    :catch_c
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/os/flagging/AconfigStorageWriteException;

    const-string v2, "failed to set boolean overrides on reboot"

    invoke-direct {v1, v2, v0}, Landroid/os/flagging/AconfigStorageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist clearBooleanLocalOverridesOnReboot(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p1, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Landroid/os/flagging/AconfigdProtoStreamer;

    invoke-direct {v0}, Landroid/os/flagging/AconfigdProtoStreamer;-><init>()V

    .line 174
    const-wide/16 v1, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/flagging/AconfigdProtoStreamer;->sendClearFlagOverrideRequests(Ljava/util/Set;J)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    .line 180
    nop

    .line 181
    return-void

    .line 178
    :catch_c
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/os/flagging/AconfigStorageWriteException;

    const-string v2, "failed to set boolean overrides on reboot"

    invoke-direct {v1, v2, v0}, Landroid/os/flagging/AconfigStorageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setBooleanLocalOverridesImmediately(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :try_start_0
    new-instance v0, Landroid/os/flagging/AconfigdProtoStreamer;

    invoke-direct {v0}, Landroid/os/flagging/AconfigdProtoStreamer;-><init>()V

    .line 152
    const-wide/16 v1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/flagging/AconfigdProtoStreamer;->sendFlagOverrideRequests(Ljava/util/Map;J)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    .line 158
    nop

    .line 159
    return-void

    .line 156
    :catch_c
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/os/flagging/AconfigStorageWriteException;

    const-string v2, "failed to set boolean overrides on reboot"

    invoke-direct {v1, v2, v0}, Landroid/os/flagging/AconfigStorageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setBooleanLocalOverridesOnReboot(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :try_start_0
    new-instance v0, Landroid/os/flagging/AconfigdProtoStreamer;

    invoke-direct {v0}, Landroid/os/flagging/AconfigdProtoStreamer;-><init>()V

    .line 126
    const-wide/16 v1, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/flagging/AconfigdProtoStreamer;->sendFlagOverrideRequests(Ljava/util/Map;J)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    .line 132
    nop

    .line 133
    return-void

    .line 130
    :catch_c
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/os/flagging/AconfigStorageWriteException;

    const-string v2, "failed to set boolean overrides on reboot"

    invoke-direct {v1, v2, v0}, Landroid/os/flagging/AconfigStorageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setBooleanOverridesOnReboot(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :try_start_0
    new-instance v0, Landroid/os/flagging/AconfigdProtoStreamer;

    invoke-direct {v0}, Landroid/os/flagging/AconfigdProtoStreamer;-><init>()V

    .line 103
    const-wide/16 v1, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/flagging/AconfigdProtoStreamer;->sendFlagOverrideRequests(Ljava/util/Map;J)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    .line 109
    nop

    .line 110
    return-void

    .line 107
    :catch_c
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/os/flagging/AconfigStorageWriteException;

    const-string v2, "failed to set boolean overrides on reboot"

    invoke-direct {v1, v2, v0}, Landroid/os/flagging/AconfigStorageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setBooleanOverridesOnSystemBuildFingerprint(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .param p1, "buildFingerprint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p2, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :try_start_0
    new-instance v0, Landroid/os/flagging/AconfigdProtoStreamer;

    invoke-direct {v0}, Landroid/os/flagging/AconfigdProtoStreamer;-><init>()V

    invoke-virtual {v0, p2, p1}, Landroid/os/flagging/AconfigdProtoStreamer;->sendOtaFlagOverrideRequests(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a

    .line 86
    nop

    .line 87
    return-void

    .line 83
    :catch_a
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/os/flagging/AconfigStorageWriteException;

    const-string v2, "failed to set boolean overrides on system build fingerprint"

    invoke-direct {v1, v2, v0}, Landroid/os/flagging/AconfigStorageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
