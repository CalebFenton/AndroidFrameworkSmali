.class public final Landroid/content/AutofillOptions;
.super Ljava/lang/Object;
.source "AutofillOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/AutofillOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field public blacklist appDisabledExpiration:J

.field public blacklist augmentedAutofillEnabled:Z

.field public final blacklist compatModeEnabled:Z

.field public blacklist disabledActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist loggingLevel:I

.field public blacklist whitelistedActivitiesForAugmentedAutofill:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const-class v0, Landroid/content/AutofillOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/AutofillOptions;->TAG:Ljava/lang/String;

    .line 196
    new-instance v0, Landroid/content/AutofillOptions$1;

    invoke-direct {v0}, Landroid/content/AutofillOptions$1;-><init>()V

    sput-object v0, Landroid/content/AutofillOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IZ)V
    .registers 3
    .param p1, "loggingLevel"    # I
    .param p2, "compatModeEnabled"    # Z

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Landroid/content/AutofillOptions;->loggingLevel:I

    .line 84
    iput-boolean p2, p0, Landroid/content/AutofillOptions;->compatModeEnabled:Z

    .line 85
    return-void
.end method

.method public static blacklist forWhitelistingItself()Landroid/content/AutofillOptions;
    .registers 6

    .line 129
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 130
    .local v0, "at":Landroid/app/ActivityThread;
    if-eqz v0, :cond_62

    .line 134
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "android.autofillservice.cts"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 141
    new-instance v2, Landroid/content/AutofillOptions;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/content/AutofillOptions;-><init>(IZ)V

    .line 143
    .local v2, "options":Landroid/content/AutofillOptions;
    iput-boolean v4, v2, Landroid/content/AutofillOptions;->augmentedAutofillEnabled:Z

    .line 145
    sget-object v3, Landroid/content/AutofillOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forWhitelistingItself("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v2

    .line 137
    .end local v2    # "options":Landroid/content/AutofillOptions;
    :cond_42
    sget-object v2, Landroid/content/AutofillOptions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forWhitelistingItself(): called by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Thou shall not pass!"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_62
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ActivityThread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpShort(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 159
    const-string/jumbo v0, "logLvl="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/AutofillOptions;->loggingLevel:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 160
    const-string v0, ", compatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/AutofillOptions;->compatModeEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 161
    const-string v0, ", augmented="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/AutofillOptions;->augmentedAutofillEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 162
    iget-object v0, p0, Landroid/content/AutofillOptions;->whitelistedActivitiesForAugmentedAutofill:Landroid/util/ArraySet;

    if-eqz v0, :cond_2d

    .line 163
    const-string v0, ", whitelistedActivitiesForAugmentedAutofill="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Landroid/content/AutofillOptions;->whitelistedActivitiesForAugmentedAutofill:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 166
    :cond_2d
    const-string v0, ", appDisabledExpiration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 167
    iget-object v0, p0, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    if-eqz v0, :cond_45

    .line 168
    const-string v0, ", disabledActivities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 171
    :cond_45
    return-void
.end method

.method public blacklist isAugmentedAutofillEnabled(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    iget-boolean v0, p0, Landroid/content/AutofillOptions;->augmentedAutofillEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 93
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 94
    .local v0, "autofillClient":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_d

    return v1

    .line 96
    :cond_d
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 97
    .local v2, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Landroid/content/AutofillOptions;->whitelistedActivitiesForAugmentedAutofill:Landroid/util/ArraySet;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Landroid/content/AutofillOptions;->whitelistedActivitiesForAugmentedAutofill:Landroid/util/ArraySet;

    .line 98
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    .line 97
    :cond_1e
    return v1
.end method

.method public blacklist isAutofillDisabledLocked(Landroid/content/ComponentName;)Z
    .registers 9
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 108
    .local v0, "elapsedTime":J
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "component":Ljava/lang/String;
    iget-wide v3, p0, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    cmp-long v3, v3, v0

    const/4 v4, 0x1

    if-ltz v3, :cond_10

    return v4

    .line 113
    :cond_10
    iget-object v3, p0, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    if-eqz v3, :cond_2c

    .line 114
    iget-object v3, p0, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 115
    .local v3, "expiration":Ljava/lang/Long;
    if-eqz v3, :cond_2c

    .line 116
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-ltz v5, :cond_27

    return v4

    .line 117
    :cond_27
    iget-object v4, p0, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .end local v3    # "expiration":Ljava/lang/Long;
    :cond_2c
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    .line 121
    const/4 v3, 0x0

    return v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutofillOptions [loggingLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/AutofillOptions;->loggingLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", compatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/AutofillOptions;->compatModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", augmentedAutofillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/AutofillOptions;->augmentedAutofillEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appDisabledExpiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 180
    iget v0, p0, Landroid/content/AutofillOptions;->loggingLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-boolean v0, p0, Landroid/content/AutofillOptions;->compatModeEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 182
    iget-boolean v0, p0, Landroid/content/AutofillOptions;->augmentedAutofillEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 183
    iget-object v0, p0, Landroid/content/AutofillOptions;->whitelistedActivitiesForAugmentedAutofill:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 184
    iget-wide v0, p0, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    iget-object v0, p0, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 186
    .local v0, "size":I
    :goto_25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    if-lez v0, :cond_4a

    .line 188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    if-ge v1, v0, :cond_4a

    .line 189
    iget-object v2, p0, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v3, p0, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    .end local v2    # "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 194
    .end local v1    # "i":I
    :cond_4a
    return-void
.end method
