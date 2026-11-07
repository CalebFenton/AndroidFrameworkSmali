.class public final synthetic Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# static fields
.field public static synthetic blacklist switchCases:[Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist getSwitchCases()[Ljava/lang/Object;
    .registers 4

    .line 0
    sget-object v0, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch4;->switchCases:[Ljava/lang/Object;

    if-eqz v0, :cond_7

    sget-object v0, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch4;->switchCases:[Ljava/lang/Object;

    return-object v0

    :cond_7
    const-class v0, Llibcore/internal/Java21LanguageFeatures$SquishyBlob;

    const-class v1, Llibcore/internal/Java21LanguageFeatures$MultiBlob;

    const-class v2, Llibcore/internal/Java21LanguageFeatures$MultiBlob;

    const-class v3, Llibcore/internal/Java21LanguageFeatures$GeometricBlob;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch4;->switchCases:[Ljava/lang/Object;

    return-object v0
.end method
