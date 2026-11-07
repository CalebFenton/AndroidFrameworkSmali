.class public final Landroid/service/settings/preferences/SetValueRequest$Builder;
.super Ljava/lang/Object;
.source "SetValueRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/preferences/SetValueRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mPreferenceKey:Ljava/lang/String;

.field private final blacklist mPreferenceValue:Landroid/service/settings/preferences/SettingsPreferenceValue;

.field private final blacklist mScreenKey:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPreferenceKey(Landroid/service/settings/preferences/SetValueRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/SetValueRequest$Builder;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferenceValue(Landroid/service/settings/preferences/SetValueRequest$Builder;)Landroid/service/settings/preferences/SettingsPreferenceValue;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/SetValueRequest$Builder;->mPreferenceValue:Landroid/service/settings/preferences/SettingsPreferenceValue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenKey(Landroid/service/settings/preferences/SetValueRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/SetValueRequest$Builder;->mScreenKey:Ljava/lang/String;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/service/settings/preferences/SettingsPreferenceValue;)V
    .registers 6
    .param p1, "screenKey"    # Ljava/lang/String;
    .param p2, "preferenceKey"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/service/settings/preferences/SettingsPreferenceValue;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 143
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 146
    iput-object p1, p0, Landroid/service/settings/preferences/SetValueRequest$Builder;->mScreenKey:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Landroid/service/settings/preferences/SetValueRequest$Builder;->mPreferenceKey:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Landroid/service/settings/preferences/SetValueRequest$Builder;->mPreferenceValue:Landroid/service/settings/preferences/SettingsPreferenceValue;

    .line 149
    return-void

    .line 144
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "preferenceKey cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "screenKey cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/settings/preferences/SetValueRequest;
    .registers 3

    .line 156
    new-instance v0, Landroid/service/settings/preferences/SetValueRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/settings/preferences/SetValueRequest;-><init>(Landroid/service/settings/preferences/SetValueRequest$Builder;Landroid/service/settings/preferences/SetValueRequest-IA;)V

    return-object v0
.end method
