.class public final Landroid/service/settings/preferences/GetValueResult$Builder;
.super Ljava/lang/Object;
.source "GetValueResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/preferences/GetValueResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMetadata:Landroid/service/settings/preferences/SettingsPreferenceMetadata;

.field private final blacklist mResultCode:I

.field private blacklist mValue:Landroid/service/settings/preferences/SettingsPreferenceValue;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMetadata(Landroid/service/settings/preferences/GetValueResult$Builder;)Landroid/service/settings/preferences/SettingsPreferenceMetadata;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/GetValueResult$Builder;->mMetadata:Landroid/service/settings/preferences/SettingsPreferenceMetadata;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultCode(Landroid/service/settings/preferences/GetValueResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/service/settings/preferences/GetValueResult$Builder;->mResultCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValue(Landroid/service/settings/preferences/GetValueResult$Builder;)Landroid/service/settings/preferences/SettingsPreferenceValue;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/GetValueResult$Builder;->mValue:Landroid/service/settings/preferences/SettingsPreferenceValue;

    return-object p0
.end method

.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "resultCode"    # I

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput p1, p0, Landroid/service/settings/preferences/GetValueResult$Builder;->mResultCode:I

    .line 186
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/settings/preferences/GetValueResult;
    .registers 3

    .line 211
    new-instance v0, Landroid/service/settings/preferences/GetValueResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/settings/preferences/GetValueResult;-><init>(Landroid/service/settings/preferences/GetValueResult$Builder;Landroid/service/settings/preferences/GetValueResult-IA;)V

    return-object v0
.end method

.method public whitelist setMetadata(Landroid/service/settings/preferences/SettingsPreferenceMetadata;)Landroid/service/settings/preferences/GetValueResult$Builder;
    .registers 2
    .param p1, "metadata"    # Landroid/service/settings/preferences/SettingsPreferenceMetadata;

    .line 202
    iput-object p1, p0, Landroid/service/settings/preferences/GetValueResult$Builder;->mMetadata:Landroid/service/settings/preferences/SettingsPreferenceMetadata;

    .line 203
    return-object p0
.end method

.method public whitelist setValue(Landroid/service/settings/preferences/SettingsPreferenceValue;)Landroid/service/settings/preferences/GetValueResult$Builder;
    .registers 2
    .param p1, "value"    # Landroid/service/settings/preferences/SettingsPreferenceValue;

    .line 193
    iput-object p1, p0, Landroid/service/settings/preferences/GetValueResult$Builder;->mValue:Landroid/service/settings/preferences/SettingsPreferenceValue;

    .line 194
    return-object p0
.end method
