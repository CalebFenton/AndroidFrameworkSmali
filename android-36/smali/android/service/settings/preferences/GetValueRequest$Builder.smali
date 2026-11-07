.class public final Landroid/service/settings/preferences/GetValueRequest$Builder;
.super Ljava/lang/Object;
.source "GetValueRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/preferences/GetValueRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mPreferenceKey:Ljava/lang/String;

.field private final blacklist mScreenKey:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPreferenceKey(Landroid/service/settings/preferences/GetValueRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/GetValueRequest$Builder;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenKey(Landroid/service/settings/preferences/GetValueRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/GetValueRequest$Builder;->mScreenKey:Ljava/lang/String;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "screenKey"    # Ljava/lang/String;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 125
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 128
    iput-object p1, p0, Landroid/service/settings/preferences/GetValueRequest$Builder;->mScreenKey:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Landroid/service/settings/preferences/GetValueRequest$Builder;->mPreferenceKey:Ljava/lang/String;

    .line 130
    return-void

    .line 126
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "preferenceKey cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "screenKey cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/settings/preferences/GetValueRequest;
    .registers 3

    .line 137
    new-instance v0, Landroid/service/settings/preferences/GetValueRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/settings/preferences/GetValueRequest;-><init>(Landroid/service/settings/preferences/GetValueRequest$Builder;Landroid/service/settings/preferences/GetValueRequest-IA;)V

    return-object v0
.end method
