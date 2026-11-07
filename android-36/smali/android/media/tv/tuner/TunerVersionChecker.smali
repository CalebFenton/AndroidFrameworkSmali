.class public final Landroid/media/tv/tuner/TunerVersionChecker;
.super Ljava/lang/Object;
.source "TunerVersionChecker.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/TunerVersionChecker$TunerVersion;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TunerVersionChecker"

.field public static final whitelist TUNER_VERSION_1_0:I = 0x10000

.field public static final whitelist TUNER_VERSION_1_1:I = 0x10001

.field public static final whitelist TUNER_VERSION_2_0:I = 0x20000

.field public static final whitelist TUNER_VERSION_3_0:I = 0x30000

.field public static final whitelist TUNER_VERSION_4_0:I = 0x40000

.field public static final whitelist TUNER_VERSION_UNKNOWN:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkHigherOrEqualVersionTo(ILjava/lang/String;)Z
    .registers 5
    .param p0, "version"    # I
    .param p1, "methodName"    # Ljava/lang/String;

    .line 147
    invoke-static {p0}, Landroid/media/tv/tuner/TunerVersionChecker;->isHigherOrEqualVersionTo(I)Z

    move-result v0

    if-nez v0, :cond_48

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current Tuner version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->getTunerVersion()I

    move-result v1

    invoke-static {v1}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->getTunerVersion()I

    move-result v2

    invoke-static {v2}, Landroid/media/tv/tuner/TunerVersionChecker;->getMinorVersion(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not support "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "TunerVersionChecker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_48
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist checkSupportVersion(ILjava/lang/String;)Z
    .registers 5
    .param p0, "version"    # I
    .param p1, "methodName"    # Ljava/lang/String;

    .line 159
    invoke-static {p0}, Landroid/media/tv/tuner/TunerVersionChecker;->supportTunerVersion(I)Z

    move-result v0

    if-nez v0, :cond_48

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current Tuner version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->getTunerVersion()I

    move-result v1

    invoke-static {v1}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->getTunerVersion()I

    move-result v2

    invoke-static {v2}, Landroid/media/tv/tuner/TunerVersionChecker;->getMinorVersion(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not support "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, "TunerVersionChecker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    return v0

    .line 166
    :cond_48
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getMajorVersion(I)I
    .registers 2
    .param p0, "version"    # I

    .line 128
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static blacklist getMinorVersion(I)I
    .registers 2
    .param p0, "version"    # I

    .line 141
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static whitelist getTunerVersion()I
    .registers 1

    .line 81
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->getTunerVersion()I

    move-result v0

    return v0
.end method

.method public static blacklist isHigherOrEqualVersionTo(I)Z
    .registers 3
    .param p0, "version"    # I

    .line 114
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->getTunerVersion()I

    move-result v0

    .line 115
    .local v0, "currentVersion":I
    if-lt v0, p0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static blacklist supportTunerVersion(I)Z
    .registers 4
    .param p0, "version"    # I

    .line 99
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->getTunerVersion()I

    move-result v0

    .line 100
    .local v0, "currentVersion":I
    invoke-static {p0}, Landroid/media/tv/tuner/TunerVersionChecker;->isHigherOrEqualVersionTo(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 101
    invoke-static {p0}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v1

    invoke-static {v0}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v2

    if-ne v1, v2, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 100
    :goto_17
    return v1
.end method
