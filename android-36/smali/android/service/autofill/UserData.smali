.class public final Landroid/service/autofill/UserData;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/service/autofill/FieldClassificationUserData;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/UserData$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/UserData;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_MAX_CATEGORY_COUNT:I = 0xa

.field private static final greylist-max-o DEFAULT_MAX_FIELD_CLASSIFICATION_IDS_SIZE:I = 0xa

.field private static final greylist-max-o DEFAULT_MAX_USER_DATA_SIZE:I = 0x32

.field private static final greylist-max-o DEFAULT_MAX_VALUE_LENGTH:I = 0x64

.field private static final greylist-max-o DEFAULT_MIN_VALUE_LENGTH:I = 0x3

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UserData"


# instance fields
.field private final blacklist mCategoryAlgorithms:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCategoryArgs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCategoryIds:[Ljava/lang/String;

.field private final blacklist mDefaultAlgorithm:Ljava/lang/String;

.field private final blacklist mDefaultArgs:Landroid/os/Bundle;

.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mValues:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 443
    new-instance v0, Landroid/service/autofill/UserData$1;

    invoke-direct {v0}, Landroid/service/autofill/UserData$1;-><init>()V

    sput-object v0, Landroid/service/autofill/UserData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/service/autofill/UserData$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/service/autofill/UserData$Builder;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->-$$Nest$fgetmId(Landroid/service/autofill/UserData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->-$$Nest$fgetmCategoryIds(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    .line 74
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->-$$Nest$fgetmCategoryIds(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 75
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->-$$Nest$fgetmValues(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    .line 76
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->-$$Nest$fgetmValues(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 77
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->-$$Nest$fgetmValues(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->-$$Nest$fgetmDefaultAlgorithm(Landroid/service/autofill/UserData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mDefaultAlgorithm:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->-$$Nest$fgetmDefaultArgs(Landroid/service/autofill/UserData$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mDefaultArgs:Landroid/os/Bundle;

    .line 81
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->-$$Nest$fgetmCategoryAlgorithms(Landroid/service/autofill/UserData$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    .line 82
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->-$$Nest$fgetmCategoryArgs(Landroid/service/autofill/UserData$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mCategoryArgs:Landroid/util/ArrayMap;

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/UserData$Builder;Landroid/service/autofill/UserData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/UserData;-><init>(Landroid/service/autofill/UserData$Builder;)V

    return-void
.end method

.method public static greylist-max-o dumpConstraints(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 179
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "maxUserDataSize: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxUserDataSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 180
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "maxFieldClassificationIdsSize: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 182
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "maxCategoryCount: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxCategoryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 183
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "minValueLength: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMinValueLength()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 184
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "maxValueLength: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxValueLength()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 185
    return-void
.end method

.method private static greylist-max-o getInt(Ljava/lang/String;I)I
    .registers 6
    .param p0, "settings"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 528
    .local v1, "at":Landroid/app/ActivityThread;
    if-eqz v1, :cond_f

    .line 529
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 532
    :cond_f
    if-nez v0, :cond_34

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; hardcoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserData"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return p1

    .line 536
    :cond_34
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public static whitelist getMaxCategoryCount()I
    .registers 2

    .line 506
    const-string v0, "autofill_user_data_max_category_count"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getMaxFieldClassificationIdsSize()I
    .registers 2

    .line 497
    const-string v0, "autofill_user_data_max_field_classification_size"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getMaxUserDataSize()I
    .registers 2

    .line 489
    const-string v0, "autofill_user_data_max_user_data_size"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getMaxValueLength()I
    .registers 2

    .line 522
    const-string v0, "autofill_user_data_max_value_length"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getMinValueLength()I
    .registers 2

    .line 514
    const-string v0, "autofill_user_data_min_value_length"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 153
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "id: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Default Algorithm: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mDefaultAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Default Args"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mDefaultArgs:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    const-string v1, ": "

    if-eqz v0, :cond_81

    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_81

    .line 157
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Algorithms per category: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3f
    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_81

    .line 159
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/view/autofill/Helper;->getRedacted(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    const-string v2, "args="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryArgs:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 165
    .end local v0    # "i":I
    :cond_81
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Field ids size: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 166
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_90
    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_af

    .line 167
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/view/autofill/Helper;->getRedacted(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 170
    .end local v0    # "i":I
    :cond_af
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Values size: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 171
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_be
    iget-object v2, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_dd

    .line 172
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/view/autofill/Helper;->getRedacted(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_be

    .line 175
    .end local v0    # "i":I
    :cond_dd
    return-void
.end method

.method public greylist-max-o getCategoryIds()[Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDefaultFieldClassificationArgs()Landroid/os/Bundle;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/service/autofill/UserData;->mDefaultArgs:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getFieldClassificationAlgorithm()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/service/autofill/UserData;->mDefaultAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFieldClassificationAlgorithmForCategory(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "categoryId"    # Ljava/lang/String;

    .line 112
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_19

    .line 116
    :cond_10
    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 114
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFieldClassificationAlgorithms()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getFieldClassificationArgs()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryArgs:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getValues()[Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 412
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 414
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserData: [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 416
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, ", categoryIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget-object v1, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/autofill/Helper;->appendRedacted(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 418
    const-string v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget-object v1, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/autofill/Helper;->appendRedacted(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 420
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 434
    iget-object v0, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Landroid/service/autofill/UserData;->mDefaultAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Landroid/service/autofill/UserData;->mDefaultArgs:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 439
    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 440
    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryArgs:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 441
    return-void
.end method
