.class public final Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$ProdResolver;
.super Ljava/lang/Object;
.source "SystemUiSystemPropertiesFlags.java"

# interfaces
.implements Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProdResolver"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I
    .registers 3
    .param p1, "flag"    # Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 226
    iget v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultIntValue:I

    return v0
.end method

.method public blacklist getStringValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Ljava/lang/String;
    .registers 3
    .param p1, "flag"    # Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 231
    iget-object v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z
    .registers 3
    .param p1, "flag"    # Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 221
    iget-boolean v0, p1, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;->mDefaultValue:Z

    return v0
.end method
