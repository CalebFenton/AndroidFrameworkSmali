.class Landroid/content/AutofillOptions$1;
.super Ljava/lang/Object;
.source "AutofillOptions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AutofillOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/AutofillOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/AutofillOptions;
    .registers 11
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    .local v0, "loggingLevel":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 203
    .local v1, "compatMode":Z
    new-instance v2, Landroid/content/AutofillOptions;

    invoke-direct {v2, v0, v1}, Landroid/content/AutofillOptions;-><init>(IZ)V

    .line 204
    .local v2, "options":Landroid/content/AutofillOptions;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/AutofillOptions;->augmentedAutofillEnabled:Z

    .line 205
    nop

    .line 206
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, v2, Landroid/content/AutofillOptions;->whitelistedActivitiesForAugmentedAutofill:Landroid/util/ArraySet;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 209
    .local v3, "size":I
    if-lez v3, :cond_45

    .line 210
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v2, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    .line 211
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2f
    if-ge v4, v3, :cond_45

    .line 212
    iget-object v5, v2, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 215
    .end local v4    # "i":I
    :cond_45
    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 197
    invoke-virtual {p0, p1}, Landroid/content/AutofillOptions$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/AutofillOptions;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/AutofillOptions;
    .registers 3
    .param p1, "size"    # I

    .line 220
    new-array v0, p1, [Landroid/content/AutofillOptions;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 197
    invoke-virtual {p0, p1}, Landroid/content/AutofillOptions$1;->newArray(I)[Landroid/content/AutofillOptions;

    move-result-object p1

    return-object p1
.end method
