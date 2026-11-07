.class public final Landroid/text/FontConfig;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/FontConfig$FontFamily;,
        Landroid/text/FontConfig$Customization;,
        Landroid/text/FontConfig$NamedFamilyList;,
        Landroid/text/FontConfig$Alias;,
        Landroid/text/FontConfig$Font;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/FontConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConfigVersion:I

.field private final blacklist mFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLastModifiedTimeMillis:J

.field private final blacklist mLocaleFallbackCustomizations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Customization$LocaleFallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNamedFamilyLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 179
    new-instance v0, Landroid/text/FontConfig$1;

    invoke-direct {v0}, Landroid/text/FontConfig$1;-><init>()V

    sput-object v0, Landroid/text/FontConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;JI)V
    .registers 14
    .param p3, "lastModifiedTimeMillis"    # J
    .param p5, "configVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;JI)V"
        }
    .end annotation

    .line 92
    .local p1, "families":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    .local p2, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    move v7, p5

    .end local p1    # "families":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    .end local p2    # "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    .end local p3    # "lastModifiedTimeMillis":J
    .end local p5    # "configVersion":I
    .local v1, "families":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    .local v2, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    .local v5, "lastModifiedTimeMillis":J
    .local v7, "configVersion":I
    invoke-direct/range {v0 .. v7}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    .line 94
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V
    .registers 8
    .param p5, "lastModifiedTimeMillis"    # J
    .param p7, "configVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Customization$LocaleFallback;",
            ">;JI)V"
        }
    .end annotation

    .line 78
    .local p1, "families":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    .local p2, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    .local p3, "namedFamilyLists":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$NamedFamilyList;>;"
    .local p4, "localeFallbackCustomizations":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Customization$LocaleFallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    .line 80
    iput-object p2, p0, Landroid/text/FontConfig;->mAliases:Ljava/util/List;

    .line 81
    iput-object p3, p0, Landroid/text/FontConfig;->mNamedFamilyLists:Ljava/util/List;

    .line 82
    iput-object p4, p0, Landroid/text/FontConfig;->mLocaleFallbackCustomizations:Ljava/util/List;

    .line 83
    iput-wide p5, p0, Landroid/text/FontConfig;->mLastModifiedTimeMillis:J

    .line 84
    iput p7, p0, Landroid/text/FontConfig;->mConfigVersion:I

    .line 85
    return-void
.end method

.method public static blacklist resolveScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 968
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, "script":Ljava/lang/String;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 970
    return-object v0

    .line 972
    :cond_d
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 203
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 204
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3a

    .line 205
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/text/FontConfig;

    .line 206
    .local v2, "that":Landroid/text/FontConfig;
    iget-wide v3, p0, Landroid/text/FontConfig;->mLastModifiedTimeMillis:J

    iget-wide v5, v2, Landroid/text/FontConfig;->mLastModifiedTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_38

    iget v3, p0, Landroid/text/FontConfig;->mConfigVersion:I

    iget v4, v2, Landroid/text/FontConfig;->mConfigVersion:I

    if-ne v3, v4, :cond_38

    iget-object v3, p0, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    iget-object v4, v2, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    .line 208
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/text/FontConfig;->mAliases:Ljava/util/List;

    iget-object v4, v2, Landroid/text/FontConfig;->mAliases:Ljava/util/List;

    .line 209
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    .line 206
    :goto_39
    return v0

    .line 204
    .end local v2    # "that":Landroid/text/FontConfig;
    :cond_3a
    :goto_3a
    return v1
.end method

.method public whitelist getAliases()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroid/text/FontConfig;->mAliases:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getConfigVersion()I
    .registers 2

    .line 151
    iget v0, p0, Landroid/text/FontConfig;->mConfigVersion:I

    return v0
.end method

.method public greylist-max-r getFamilies()[Landroid/text/FontConfig$FontFamily;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    iget-object v0, p0, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/text/FontConfig$FontFamily;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/FontConfig$FontFamily;

    return-object v0
.end method

.method public whitelist getFontFamilies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getLastModifiedTimeMillis()J
    .registers 3

    .line 142
    iget-wide v0, p0, Landroid/text/FontConfig;->mLastModifiedTimeMillis:J

    return-wide v0
.end method

.method public blacklist getLocaleFallbackCustomizations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Customization$LocaleFallback;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Landroid/text/FontConfig;->mLocaleFallbackCustomizations:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getNamedFamilyLists()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroid/text/FontConfig;->mNamedFamilyLists:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 214
    iget-object v0, p0, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    iget-object v1, p0, Landroid/text/FontConfig;->mAliases:Ljava/util/List;

    iget-wide v2, p0, Landroid/text/FontConfig;->mLastModifiedTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Landroid/text/FontConfig;->mConfigVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontConfig{mFamilies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAliases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig;->mAliases:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastModifiedTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/text/FontConfig;->mLastModifiedTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/text/FontConfig;->mConfigVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 172
    iget-object v0, p0, Landroid/text/FontConfig;->mFamilies:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 173
    iget-object v0, p0, Landroid/text/FontConfig;->mAliases:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 174
    iget-object v0, p0, Landroid/text/FontConfig;->mNamedFamilyLists:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 175
    iget-wide v0, p0, Landroid/text/FontConfig;->mLastModifiedTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 176
    iget v0, p0, Landroid/text/FontConfig;->mConfigVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    return-void
.end method
