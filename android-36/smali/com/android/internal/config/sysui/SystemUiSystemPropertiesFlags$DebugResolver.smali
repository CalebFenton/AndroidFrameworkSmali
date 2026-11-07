.class public Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$DebugResolver;
.super Ljava/lang/Object;
.source "SystemUiSystemPropertiesFlags.java"

# interfaces
.implements Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugResolver"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 249
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I
    .registers 4
    .param p1, "flag"    # Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 255
    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    if-nez v0, :cond_d

    .line 256
    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    iget v1, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultIntValue:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 258
    :cond_d
    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    invoke-virtual {p0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$DebugResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getStringValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Ljava/lang/String;
    .registers 4
    .param p1, "flag"    # Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 264
    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    if-nez v0, :cond_d

    .line 265
    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultStringValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 267
    :cond_d
    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    invoke-virtual {p0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$DebugResolver;->getStringValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z
    .registers 4
    .param p1, "flag"    # Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 240
    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    if-nez v0, :cond_d

    .line 241
    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultValue:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$DebugResolver;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 243
    :cond_d
    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    invoke-virtual {p0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$DebugResolver;->isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$DebugResolver;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
