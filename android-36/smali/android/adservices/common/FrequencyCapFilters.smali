.class public final Landroid/adservices/common/FrequencyCapFilters;
.super Ljava/lang/Object;
.source "FrequencyCapFilters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/FrequencyCapFilters$Builder;,
        Landroid/adservices/common/FrequencyCapFilters$AdEventType;
    }
.end annotation


# static fields
.field public static final whitelist AD_EVENT_TYPE_CLICK:I = 0x3

.field public static final whitelist AD_EVENT_TYPE_IMPRESSION:I = 0x1

.field public static final blacklist AD_EVENT_TYPE_INVALID:I = -0x1

.field public static final blacklist AD_EVENT_TYPE_MAX:I = 0x3

.field public static final blacklist AD_EVENT_TYPE_MIN:I = 0x0

.field public static final whitelist AD_EVENT_TYPE_VIEW:I = 0x2

.field public static final whitelist AD_EVENT_TYPE_WIN:I = 0x0

.field public static final blacklist CLICK_EVENTS_FIELD_NAME:Ljava/lang/String; = "click"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/FrequencyCapFilters;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FREQUENCY_CAP_FILTERS_NULL_ELEMENT_ERROR_MESSAGE:Ljava/lang/String; = "FrequencyCapFilters should not contain null KeyedFrequencyCaps"

.field public static final blacklist FREQUENCY_CAP_FILTERS_NULL_LIST_ERROR_MESSAGE:Ljava/lang/String; = "FrequencyCapFilters should not set null list of KeyedFrequencyCaps"

.field public static final blacklist IMPRESSION_EVENTS_FIELD_NAME:Ljava/lang/String; = "impression"

.field public static final blacklist MAX_NUM_FREQUENCY_CAP_FILTERS:I = 0x14

.field public static final blacklist NUM_FREQUENCY_CAP_FILTERS_EXCEEDED_FORMAT:Ljava/lang/String; = "FrequencyCapFilters should have no more than %d filters"

.field public static final blacklist VIEW_EVENTS_FIELD_NAME:Ljava/lang/String; = "view"

.field public static final blacklist WIN_EVENTS_FIELD_NAME:Ljava/lang/String; = "win"


# instance fields
.field private final blacklist mKeyedFrequencyCapsForClickEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyedFrequencyCapsForViewEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyedFrequencyCapsForWinEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 118
    new-instance v0, Landroid/adservices/common/FrequencyCapFilters$1;

    invoke-direct {v0}, Landroid/adservices/common/FrequencyCapFilters$1;-><init>()V

    sput-object v0, Landroid/adservices/common/FrequencyCapFilters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/common/FrequencyCapFilters$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/common/FrequencyCapFilters$Builder;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {p1}, Landroid/adservices/common/FrequencyCapFilters$Builder;->-$$Nest$fgetmKeyedFrequencyCapsForWinEvents(Landroid/adservices/common/FrequencyCapFilters$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForWinEvents:Ljava/util/List;

    .line 136
    invoke-static {p1}, Landroid/adservices/common/FrequencyCapFilters$Builder;->-$$Nest$fgetmKeyedFrequencyCapsForImpressionEvents(Landroid/adservices/common/FrequencyCapFilters$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    .line 137
    invoke-static {p1}, Landroid/adservices/common/FrequencyCapFilters$Builder;->-$$Nest$fgetmKeyedFrequencyCapsForViewEvents(Landroid/adservices/common/FrequencyCapFilters$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForViewEvents:Ljava/util/List;

    .line 138
    invoke-static {p1}, Landroid/adservices/common/FrequencyCapFilters$Builder;->-$$Nest$fgetmKeyedFrequencyCapsForClickEvents(Landroid/adservices/common/FrequencyCapFilters$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForClickEvents:Ljava/util/List;

    .line 139
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/common/FrequencyCapFilters$Builder;Landroid/adservices/common/FrequencyCapFilters-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/FrequencyCapFilters;-><init>(Landroid/adservices/common/FrequencyCapFilters$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForWinEvents:Ljava/util/List;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForViewEvents:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForClickEvents:Ljava/util/List;

    .line 149
    iget-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForWinEvents:Ljava/util/List;

    sget-object v1, Landroid/adservices/common/KeyedFrequencyCap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 150
    iget-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    sget-object v1, Landroid/adservices/common/KeyedFrequencyCap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 151
    iget-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForViewEvents:Ljava/util/List;

    sget-object v1, Landroid/adservices/common/KeyedFrequencyCap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 152
    iget-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForClickEvents:Ljava/util/List;

    sget-object v1, Landroid/adservices/common/KeyedFrequencyCap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 153
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/FrequencyCapFilters-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/FrequencyCapFilters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist fcapSetToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 260
    .local p0, "fcapSet":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/common/KeyedFrequencyCap;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 261
    .local v0, "toReturn":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/common/KeyedFrequencyCap;

    .line 262
    .local v2, "fcap":Landroid/adservices/common/KeyedFrequencyCap;
    invoke-virtual {v2}, Landroid/adservices/common/KeyedFrequencyCap;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 263
    .end local v2    # "fcap":Landroid/adservices/common/KeyedFrequencyCap;
    goto :goto_9

    .line 264
    :cond_1d
    return-object v0
.end method

.method public static blacklist fromJson(Lorg/json/JSONObject;)Landroid/adservices/common/FrequencyCapFilters;
    .registers 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 276
    new-instance v0, Landroid/adservices/common/FrequencyCapFilters$Builder;

    invoke-direct {v0}, Landroid/adservices/common/FrequencyCapFilters$Builder;-><init>()V

    .line 277
    .local v0, "builder":Landroid/adservices/common/FrequencyCapFilters$Builder;
    const-string v1, "win"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 278
    nop

    .line 279
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Landroid/adservices/common/FrequencyCapFilters;->jsonArrayToFcapList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Landroid/adservices/common/FrequencyCapFilters$Builder;->setKeyedFrequencyCapsForWinEvents(Ljava/util/List;)Landroid/adservices/common/FrequencyCapFilters$Builder;

    .line 281
    :cond_19
    const-string v1, "impression"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 282
    nop

    .line 283
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Landroid/adservices/common/FrequencyCapFilters;->jsonArrayToFcapList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 282
    invoke-virtual {v0, v1}, Landroid/adservices/common/FrequencyCapFilters$Builder;->setKeyedFrequencyCapsForImpressionEvents(Ljava/util/List;)Landroid/adservices/common/FrequencyCapFilters$Builder;

    .line 285
    :cond_2d
    const-string v1, "view"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 286
    nop

    .line 287
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Landroid/adservices/common/FrequencyCapFilters;->jsonArrayToFcapList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Landroid/adservices/common/FrequencyCapFilters$Builder;->setKeyedFrequencyCapsForViewEvents(Ljava/util/List;)Landroid/adservices/common/FrequencyCapFilters$Builder;

    .line 289
    :cond_41
    const-string v1, "click"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 290
    nop

    .line 291
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Landroid/adservices/common/FrequencyCapFilters;->jsonArrayToFcapList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 290
    invoke-virtual {v0, v1}, Landroid/adservices/common/FrequencyCapFilters$Builder;->setKeyedFrequencyCapsForClickEvents(Ljava/util/List;)Landroid/adservices/common/FrequencyCapFilters$Builder;

    .line 293
    :cond_55
    invoke-virtual {v0}, Landroid/adservices/common/FrequencyCapFilters$Builder;->build()Landroid/adservices/common/FrequencyCapFilters;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getSizeInBytesOfFcapList(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;)I"
        }
    .end annotation

    .line 233
    .local p1, "fcaps":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/common/KeyedFrequencyCap;>;"
    const/4 v0, 0x0

    .line 234
    .local v0, "toReturn":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/common/KeyedFrequencyCap;

    .line 235
    .local v2, "fcap":Landroid/adservices/common/KeyedFrequencyCap;
    invoke-virtual {v2}, Landroid/adservices/common/KeyedFrequencyCap;->getSizeInBytes()I

    move-result v3

    add-int/2addr v0, v3

    .line 236
    .end local v2    # "fcap":Landroid/adservices/common/KeyedFrequencyCap;
    goto :goto_5

    .line 237
    :cond_17
    return v0
.end method

.method private static blacklist jsonArrayToFcapList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 4
    .param p0, "json"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v0, "toReturn":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/common/KeyedFrequencyCap;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 300
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Landroid/adservices/common/KeyedFrequencyCap;->fromJson(Lorg/json/JSONObject;)Landroid/adservices/common/KeyedFrequencyCap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 302
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 323
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 324
    :cond_4
    instance-of v1, p1, Landroid/adservices/common/FrequencyCapFilters;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 325
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/common/FrequencyCapFilters;

    .line 326
    .local v1, "that":Landroid/adservices/common/FrequencyCapFilters;
    iget-object v3, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForWinEvents:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForWinEvents:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    .line 327
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForViewEvents:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForViewEvents:Ljava/util/List;

    .line 329
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForClickEvents:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForClickEvents:Ljava/util/List;

    .line 330
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    .line 326
    :goto_37
    return v0
.end method

.method public whitelist getKeyedFrequencyCapsForClickEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForClickEvents:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getKeyedFrequencyCapsForImpressionEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getKeyedFrequencyCapsForViewEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForViewEvents:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getKeyedFrequencyCapsForWinEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForWinEvents:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSizeInBytes()I
    .registers 3

    .line 226
    iget-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForWinEvents:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/adservices/common/FrequencyCapFilters;->getSizeInBytesOfFcapList(Ljava/util/List;)I

    move-result v0

    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    .line 227
    invoke-direct {p0, v1}, Landroid/adservices/common/FrequencyCapFilters;->getSizeInBytesOfFcapList(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForViewEvents:Ljava/util/List;

    .line 228
    invoke-direct {p0, v1}, Landroid/adservices/common/FrequencyCapFilters;->getSizeInBytesOfFcapList(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForClickEvents:Ljava/util/List;

    .line 229
    invoke-direct {p0, v1}, Landroid/adservices/common/FrequencyCapFilters;->getSizeInBytesOfFcapList(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 226
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 336
    iget-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForWinEvents:Ljava/util/List;

    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    iget-object v2, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForViewEvents:Ljava/util/List;

    iget-object v3, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForClickEvents:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toJson()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 247
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 248
    .local v0, "toReturn":Lorg/json/JSONObject;
    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForWinEvents:Ljava/util/List;

    invoke-static {v1}, Landroid/adservices/common/FrequencyCapFilters;->fcapSetToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "win"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    .line 251
    invoke-static {v1}, Landroid/adservices/common/FrequencyCapFilters;->fcapSetToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    .line 249
    const-string v2, "impression"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForViewEvents:Ljava/util/List;

    invoke-static {v1}, Landroid/adservices/common/FrequencyCapFilters;->fcapSetToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "view"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForClickEvents:Ljava/util/List;

    .line 254
    invoke-static {v1}, Landroid/adservices/common/FrequencyCapFilters;->fcapSetToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    .line 253
    const-string v2, "click"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrequencyCapFilters{mKeyedFrequencyCapsForWinEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForWinEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeyedFrequencyCapsForImpressionEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeyedFrequencyCapsForViewEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForViewEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeyedFrequencyCapsForClickEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForClickEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 307
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForWinEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 309
    iget-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 310
    iget-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForViewEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 311
    iget-object v0, p0, Landroid/adservices/common/FrequencyCapFilters;->mKeyedFrequencyCapsForClickEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 312
    return-void
.end method
