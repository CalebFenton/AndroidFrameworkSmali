.class public final Landroid/service/settings/preferences/MetadataResult$Builder;
.super Ljava/lang/Object;
.source "MetadataResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/preferences/MetadataResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMetadataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/settings/preferences/SettingsPreferenceMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mResultCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMetadataList(Landroid/service/settings/preferences/MetadataResult$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/preferences/MetadataResult$Builder;->mMetadataList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultCode(Landroid/service/settings/preferences/MetadataResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/service/settings/preferences/MetadataResult$Builder;->mResultCode:I

    return p0
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "resultCode"    # I

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/MetadataResult$Builder;->mMetadataList:Ljava/util/List;

    .line 145
    iput p1, p0, Landroid/service/settings/preferences/MetadataResult$Builder;->mResultCode:I

    .line 146
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/settings/preferences/MetadataResult;
    .registers 3

    .line 162
    new-instance v0, Landroid/service/settings/preferences/MetadataResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/settings/preferences/MetadataResult;-><init>(Landroid/service/settings/preferences/MetadataResult$Builder;Landroid/service/settings/preferences/MetadataResult-IA;)V

    return-object v0
.end method

.method public whitelist setMetadataList(Ljava/util/List;)Landroid/service/settings/preferences/MetadataResult$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/preferences/SettingsPreferenceMetadata;",
            ">;)",
            "Landroid/service/settings/preferences/MetadataResult$Builder;"
        }
    .end annotation

    .line 153
    .local p1, "metadataList":Ljava/util/List;, "Ljava/util/List<Landroid/service/settings/preferences/SettingsPreferenceMetadata;>;"
    iput-object p1, p0, Landroid/service/settings/preferences/MetadataResult$Builder;->mMetadataList:Ljava/util/List;

    .line 154
    return-object p0
.end method
