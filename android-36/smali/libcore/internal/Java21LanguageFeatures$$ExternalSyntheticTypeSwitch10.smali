.class public final synthetic Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# static fields
.field public static synthetic blacklist switchCases:[Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist getSwitchCases()[Ljava/lang/Object;
    .registers 3

    .line 0
    sget-object v0, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch10;->switchCases:[Ljava/lang/Object;

    if-eqz v0, :cond_7

    sget-object v0, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch10;->switchCases:[Ljava/lang/Object;

    return-object v0

    :cond_7
    const-class v0, Llibcore/internal/Java21LanguageFeatures$PairableInt;

    const-class v1, Llibcore/internal/Java21LanguageFeatures$PairableString;

    const-class v2, Llibcore/internal/Java21LanguageFeatures$PairableInt;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch10;->switchCases:[Ljava/lang/Object;

    return-object v0
.end method
