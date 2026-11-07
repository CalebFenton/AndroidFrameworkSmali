.class public final Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;
.super Ljava/lang/Object;
.source "SettingsPreferenceValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/preferences/SettingsPreferenceValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mType:I

.field private blacklist mValue:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;)I
    .registers 1

    iget p0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValue(Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor whitelist <init>(I)V
    .registers 5
    .param p1, "type"    # I

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    if-ltz p1, :cond_b

    const/4 v0, 0x4

    if-gt p1, v0, :cond_b

    .line 194
    iput p1, p0, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->mType:I

    .line 195
    return-void

    .line 192
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkType(I)V
    .registers 5
    .param p1, "type"    # I

    .line 249
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->mType:I

    if-ne v0, p1, :cond_5

    .line 252
    return-void

    .line 250
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/settings/preferences/SettingsPreferenceValue;
    .registers 3

    .line 259
    new-instance v0, Landroid/service/settings/preferences/SettingsPreferenceValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/settings/preferences/SettingsPreferenceValue;-><init>(Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;Landroid/service/settings/preferences/SettingsPreferenceValue-IA;)V

    return-object v0
.end method

.method public whitelist setBooleanValue(Z)Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;
    .registers 3
    .param p1, "booleanValue"    # Z

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->checkType(I)V

    .line 204
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->mValue:Ljava/lang/Object;

    .line 205
    return-object p0
.end method

.method public whitelist setDoubleValue(D)Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;
    .registers 4
    .param p1, "doubleValue"    # D

    .line 233
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->checkType(I)V

    .line 234
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->mValue:Ljava/lang/Object;

    .line 235
    return-object p0
.end method

.method public whitelist setIntValue(I)Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;
    .registers 3
    .param p1, "intValue"    # I

    .line 213
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->checkType(I)V

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->mValue:Ljava/lang/Object;

    .line 215
    return-object p0
.end method

.method public whitelist setLongValue(J)Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;
    .registers 4
    .param p1, "longValue"    # J

    .line 223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->checkType(I)V

    .line 224
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->mValue:Ljava/lang/Object;

    .line 225
    return-object p0
.end method

.method public whitelist setStringValue(Ljava/lang/String;)Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;
    .registers 3
    .param p1, "stringValue"    # Ljava/lang/String;

    .line 243
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->checkType(I)V

    .line 244
    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->mValue:Ljava/lang/Object;

    .line 245
    return-object p0
.end method
