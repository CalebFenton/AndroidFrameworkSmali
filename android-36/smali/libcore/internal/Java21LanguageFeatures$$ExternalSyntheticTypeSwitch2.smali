.class public final synthetic Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# static fields
.field public static synthetic blacklist switchCases:[Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist getSwitchCases()[Ljava/lang/Object;
    .registers 2

    .line 0
    sget-object v0, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch2;->switchCases:[Ljava/lang/Object;

    if-eqz v0, :cond_7

    sget-object v0, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch2;->switchCases:[Ljava/lang/Object;

    return-object v0

    :cond_7
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch2;->switchCases:[Ljava/lang/Object;

    return-object v0
.end method
