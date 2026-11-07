.class public final Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;
.super Ljava/lang/Object;
.source "SystemUiSystemPropertiesFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Flag"
.end annotation


# instance fields
.field public final blacklist mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

.field public final blacklist mDefaultIntValue:I

.field public final blacklist mDefaultStringValue:Ljava/lang/String;

.field public final blacklist mDefaultValue:Z

.field public final blacklist mSysPropKey:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ILcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)V
    .registers 5
    .param p1, "sysPropKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .param p3, "debugDefault"    # Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    .line 200
    iput p2, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultIntValue:I

    .line 201
    iput-object p3, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultValue:Z

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultStringValue:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)V
    .registers 5
    .param p1, "sysPropKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "debugDefault"    # Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultStringValue:Ljava/lang/String;

    .line 209
    iput-object p3, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultValue:Z

    .line 211
    iput v0, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultIntValue:I

    .line 212
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZLcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)V
    .registers 5
    .param p1, "sysPropKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "debugDefault"    # Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mSysPropKey:Ljava/lang/String;

    .line 192
    iput-boolean p2, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultValue:Z

    .line 193
    iput-object p3, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDebugDefault:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultIntValue:I

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultStringValue:Ljava/lang/String;

    .line 196
    return-void
.end method
