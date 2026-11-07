.class public Landroid/content/pm/AppSearchShortcutInfo;
.super Landroid/app/appsearch/GenericDocument;
.source "AppSearchShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/AppSearchShortcutInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist IS_DISABLED:Ljava/lang/String; = "Dis"

.field public static final blacklist IS_DYNAMIC:Ljava/lang/String; = "Dyn"

.field public static final blacklist IS_IMMUTABLE:Ljava/lang/String; = "Im"

.field public static final blacklist IS_MANIFEST:Ljava/lang/String; = "Man"

.field public static final blacklist KEY_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final blacklist KEY_CAPABILITY:Ljava/lang/String; = "capability"

.field public static final blacklist KEY_CAPABILITY_BINDINGS:Ljava/lang/String; = "capabilityBindings"

.field public static final blacklist KEY_CATEGORIES:Ljava/lang/String; = "categories"

.field public static final blacklist KEY_DISABLED_MESSAGE:Ljava/lang/String; = "disabledMessage"

.field public static final blacklist KEY_DISABLED_REASON:Ljava/lang/String; = "disabledReason"

.field public static final blacklist KEY_EXTRAS:Ljava/lang/String; = "extras"

.field public static final blacklist KEY_FLAGS:Ljava/lang/String; = "flags"

.field public static final blacklist KEY_ICON_RES_ID:Ljava/lang/String; = "iconResId"

.field public static final blacklist KEY_ICON_RES_NAME:Ljava/lang/String; = "iconResName"

.field public static final blacklist KEY_ICON_URI:Ljava/lang/String; = "iconUri"

.field public static final blacklist KEY_INTENTS:Ljava/lang/String; = "intents"

.field public static final blacklist KEY_INTENT_PERSISTABLE_EXTRAS:Ljava/lang/String; = "intentPersistableExtras"

.field public static final blacklist KEY_LOCUS_ID:Ljava/lang/String; = "locusId"

.field public static final blacklist KEY_LONG_LABEL:Ljava/lang/String; = "longLabel"

.field public static final blacklist KEY_PERSON:Ljava/lang/String; = "person"

.field public static final blacklist KEY_SHORT_LABEL:Ljava/lang/String; = "shortLabel"

.field public static final blacklist NOT_DISABLED:Ljava/lang/String; = "nDis"

.field public static final blacklist NOT_DYNAMIC:Ljava/lang/String; = "nDyn"

.field public static final blacklist NOT_IMMUTABLE:Ljava/lang/String; = "nIm"

.field public static final blacklist NOT_MANIFEST:Ljava/lang/String; = "nMan"

.field public static final blacklist SCHEMA:Landroid/app/appsearch/AppSearchSchema;

.field public static final blacklist SCHEMA_TYPE:Ljava/lang/String; = "Shortcut"

.field public static final blacklist SCHEMA_VERSION:I = 0x3

.field public static final blacklist SHORTCUT_TTL:J


# direct methods
.method public static synthetic blacklist $r8$lambda$kireZJaXE6bkXyhT89ZMVSaoMx4(Landroid/content/pm/AppSearchShortcutInfo;[B)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/pm/AppSearchShortcutInfo;->transformToBundle([B)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smflattenFlags(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/content/pm/AppSearchShortcutInfo;->flattenFlags(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtransformToByteArray(Landroid/os/PersistableBundle;)[B
    .registers 1

    invoke-static {p0}, Landroid/content/pm/AppSearchShortcutInfo;->transformToByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/content/pm/AppSearchShortcutInfo;->SHORTCUT_TTL:J

    .line 165
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$Builder;

    const-string v1, "Shortcut"

    invoke-direct {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v2, "activity"

    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 167
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 168
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 169
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string/jumbo v4, "shortLabel"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string/jumbo v4, "longLabel"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 180
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 181
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v4, "disabledMessage"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 186
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 187
    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v5, "categories"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 192
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string/jumbo v5, "intents"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 198
    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 199
    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    const-string/jumbo v5, "intentPersistableExtras"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;

    const-string/jumbo v5, "person"

    const-string v6, "ShortcutPerson"

    invoke-direct {v1, v5, v6}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string/jumbo v5, "locusId"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 215
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    const-string v5, "extras"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig;

    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v5, "flags"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 224
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 225
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    const-string/jumbo v5, "iconResId"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string/jumbo v5, "iconResName"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 234
    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 235
    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string/jumbo v5, "iconUri"

    invoke-direct {v1, v5}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 240
    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 241
    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v4, "disabledReason"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 245
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 246
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 247
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v4, "capability"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 252
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 253
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    const-string v4, "capabilityBindings"

    invoke-direct {v1, v4}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 258
    invoke-virtual {v1, v3}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 259
    invoke-virtual {v1, v2}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchSchema$Builder;->build()Landroid/app/appsearch/AppSearchSchema;

    move-result-object v0

    sput-object v0, Landroid/content/pm/AppSearchShortcutInfo;->SCHEMA:Landroid/app/appsearch/AppSearchSchema;

    .line 165
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/GenericDocument;)V
    .registers 2
    .param p1, "document"    # Landroid/app/appsearch/GenericDocument;

    .line 327
    invoke-direct {p0, p1}, Landroid/app/appsearch/GenericDocument;-><init>(Landroid/app/appsearch/GenericDocument;)V

    .line 328
    return-void
.end method

.method private static blacklist flagToString(II)Ljava/lang/String;
    .registers 3
    .param p0, "flags"    # I
    .param p1, "mask"    # I

    .line 746
    sparse-switch p1, :sswitch_data_32

    .line 756
    const/4 v0, 0x0

    return-object v0

    .line 754
    :sswitch_5
    and-int v0, p0, p1

    if-eqz v0, :cond_c

    const-string v0, "Im"

    goto :goto_f

    :cond_c
    const-string/jumbo v0, "nIm"

    :goto_f
    return-object v0

    .line 752
    :sswitch_10
    and-int v0, p0, p1

    if-eqz v0, :cond_17

    const-string v0, "Dis"

    goto :goto_1a

    :cond_17
    const-string/jumbo v0, "nDis"

    :goto_1a
    return-object v0

    .line 750
    :sswitch_1b
    and-int v0, p0, p1

    if-eqz v0, :cond_22

    const-string v0, "Man"

    goto :goto_25

    :cond_22
    const-string/jumbo v0, "nMan"

    :goto_25
    return-object v0

    .line 748
    :sswitch_26
    and-int v0, p0, p1

    if-eqz v0, :cond_2d

    const-string v0, "Dyn"

    goto :goto_30

    :cond_2d
    const-string/jumbo v0, "nDyn"

    :goto_30
    return-object v0

    nop

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_26
        0x20 -> :sswitch_1b
        0x40 -> :sswitch_10
        0x100 -> :sswitch_5
    .end sparse-switch
.end method

.method private static blacklist flattenFlags(I)[Ljava/lang/String;
    .registers 5
    .param p0, "flags"    # I

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v0, "flattenedFlags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    const/16 v2, 0x1f

    if-ge v1, v2, :cond_18

    .line 734
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    .line 735
    .local v2, "mask":I
    invoke-static {p0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->flagToString(II)Ljava/lang/String;

    move-result-object v3

    .line 736
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_15

    .line 737
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    .end local v2    # "mask":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 740
    .end local v1    # "i":I
    :cond_18
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static blacklist instance(Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/AppSearchShortcutInfo;
    .registers 4
    .param p0, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 335
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v0, Landroid/content/pm/AppSearchShortcutInfo$Builder;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AppSearchShortcutInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 338
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setCategories(Ljava/util/Set;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setCreationTimestampMillis(J)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v0

    check-cast v0, Landroid/content/pm/AppSearchShortcutInfo$Builder;

    .line 345
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setFlags(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setIconResId(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 347
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIconResName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setIconResName(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 348
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setIconUri(Ljava/lang/String;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 349
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setDisabledReason(I)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 350
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setPersons([Landroid/app/Person;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setLocusId(Landroid/content/LocusId;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getCapabilityBindingsInternal()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setCapabilityBindings(Ljava/util/Map;)Landroid/content/pm/AppSearchShortcutInfo$Builder;

    move-result-object v0

    sget-wide v1, Landroid/content/pm/AppSearchShortcutInfo;->SHORTCUT_TTL:J

    .line 353
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->setTtlMillis(J)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v0

    check-cast v0, Landroid/content/pm/AppSearchShortcutInfo$Builder;

    .line 354
    invoke-virtual {v0}, Landroid/content/pm/AppSearchShortcutInfo$Builder;->build()Landroid/content/pm/AppSearchShortcutInfo;

    move-result-object v0

    .line 336
    return-object v0
.end method

.method static synthetic blacklist lambda$parseCapabilityBindings$3(Ljava/util/Map;Ljava/lang/String;)V
    .registers 10
    .param p0, "ret"    # Ljava/util/Map;
    .param p1, "binding"    # Ljava/lang/String;

    .line 807
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 808
    return-void

    .line 810
    :cond_7
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 811
    .local v1, "capabilityStopIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_67

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_19

    goto :goto_67

    .line 814
    :cond_19
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 815
    .local v3, "capabilityName":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 816
    .local v0, "paramStopIndex":I
    if-eq v0, v2, :cond_66

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne v0, v2, :cond_2e

    goto :goto_66

    .line 819
    :cond_2e
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 820
    .local v2, "paramName":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 821
    .local v5, "paramValue":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    .line 822
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6, v4}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface {p0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    :cond_48
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 825
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5c

    .line 826
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :cond_5c
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    return-void

    .line 817
    .end local v2    # "paramName":Ljava/lang/String;
    .end local v5    # "paramValue":Ljava/lang/String;
    .end local v6    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_66
    :goto_66
    return-void

    .line 812
    .end local v0    # "paramStopIndex":I
    .end local v3    # "capabilityName":Ljava/lang/String;
    :cond_67
    :goto_67
    return-void
.end method

.method static synthetic blacklist lambda$toShortcutInfo$0(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p0, "uri"    # Ljava/lang/String;

    .line 383
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 387
    :cond_e
    const/4 v0, 0x0

    :try_start_f
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_13
    .catch Ljava/net/URISyntaxException; {:try_start_f .. :try_end_13} :catch_14

    return-object v0

    .line 388
    :catch_14
    move-exception v0

    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$toShortcutInfo$1(I)[Landroid/content/Intent;
    .registers 2
    .param p0, "x$0"    # I

    .line 392
    new-array v0, p0, [Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic blacklist lambda$toShortcutInfo$2(I)[Landroid/os/Bundle;
    .registers 2
    .param p0, "x$0"    # I

    .line 396
    new-array v0, p0, [Landroid/os/Bundle;

    return-object v0
.end method

.method private static blacklist parseCapabilityBindings([Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .param p0, "capabilityBindings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 802
    if-eqz p0, :cond_19

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_19

    .line 805
    :cond_6
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 806
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 830
    return-object v0

    .line 803
    .end local v0    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist parseFlag(Ljava/lang/String;)I
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .line 772
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_42

    :cond_9
    goto :goto_32

    :sswitch_a
    const-string v0, "Man"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_33

    :sswitch_14
    const-string v0, "Dyn"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_33

    :sswitch_1e
    const-string v0, "Dis"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_33

    :sswitch_28
    const-string v0, "Im"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_33

    :goto_32
    const/4 v0, -0x1

    :goto_33
    packed-switch v0, :pswitch_data_54

    .line 782
    return v1

    .line 780
    :pswitch_37
    const/16 v0, 0x100

    return v0

    .line 778
    :pswitch_3a
    const/16 v0, 0x40

    return v0

    .line 776
    :pswitch_3d
    const/16 v0, 0x20

    return v0

    .line 774
    :pswitch_40
    return v2

    nop

    :sswitch_data_42
    .sparse-switch
        0x944 -> :sswitch_28
        0x10c6e -> :sswitch_1e
        0x10e59 -> :sswitch_14
        0x12d3a -> :sswitch_a
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
    .end packed-switch
.end method

.method private static blacklist parseFlags([Ljava/lang/String;)I
    .registers 4
    .param p0, "flags"    # [Ljava/lang/String;

    .line 761
    if-nez p0, :cond_4

    .line 762
    const/4 v0, 0x0

    return v0

    .line 764
    :cond_4
    const/4 v0, 0x0

    .line 765
    .local v0, "ret":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 766
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/content/pm/AppSearchShortcutInfo;->parseFlag(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v0, v2

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 768
    .end local v1    # "i":I
    :cond_13
    return v0
.end method

.method private static blacklist parsePerson([Landroid/app/appsearch/GenericDocument;)[Landroid/app/Person;
    .registers 6
    .param p0, "persons"    # [Landroid/app/appsearch/GenericDocument;

    .line 788
    if-nez p0, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/app/Person;

    return-object v0

    .line 789
    :cond_6
    array-length v0, p0

    new-array v0, v0, [Landroid/app/Person;

    .line 790
    .local v0, "ret":[Landroid/app/Person;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 791
    aget-object v2, p0, v1

    .line 792
    .local v2, "document":Landroid/app/appsearch/GenericDocument;
    if-nez v2, :cond_12

    goto :goto_1d

    .line 793
    :cond_12
    new-instance v3, Landroid/content/pm/AppSearchShortcutPerson;

    invoke-direct {v3, v2}, Landroid/content/pm/AppSearchShortcutPerson;-><init>(Landroid/app/appsearch/GenericDocument;)V

    .line 794
    .local v3, "person":Landroid/content/pm/AppSearchShortcutPerson;
    invoke-virtual {v3}, Landroid/content/pm/AppSearchShortcutPerson;->toPerson()Landroid/app/Person;

    move-result-object v4

    aput-object v4, v0, v1

    .line 790
    .end local v2    # "document":Landroid/app/appsearch/GenericDocument;
    .end local v3    # "person":Landroid/content/pm/AppSearchShortcutPerson;
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 796
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method public static blacklist toGenericDocuments(Ljava/util/Collection;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/appsearch/GenericDocument;",
            ">;"
        }
    .end annotation

    .line 437
    .local p0, "shortcuts":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 438
    .local v0, "docs":Ljava/util/List;, "Ljava/util/List<Landroid/app/appsearch/GenericDocument;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 439
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-static {v2}, Landroid/content/pm/AppSearchShortcutInfo;->instance(Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/AppSearchShortcutInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    goto :goto_d

    .line 441
    :cond_21
    return-object v0
.end method

.method private blacklist transformToBundle([B)Landroid/os/Bundle;
    .registers 6
    .param p1, "extras"    # [B

    .line 703
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 704
    return-object v0

    .line 706
    :cond_4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_27

    .line 708
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_c
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 709
    .local v2, "ret":Landroid/os/Bundle;
    invoke-static {v1}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1d

    .line 710
    nop

    .line 711
    :try_start_19
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_27

    .line 710
    return-object v2

    .line 707
    .end local v2    # "ret":Landroid/os/Bundle;
    :catchall_1d
    move-exception v2

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v3

    :try_start_23
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/content/pm/AppSearchShortcutInfo;
    .end local p1    # "extras":[B
    :goto_26
    throw v2
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_27

    .line 711
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Landroid/content/pm/AppSearchShortcutInfo;
    .restart local p1    # "extras":[B
    :catch_27
    move-exception v1

    .line 712
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method private static blacklist transformToByteArray(Landroid/os/PersistableBundle;)[B
    .registers 4
    .param p0, "extras"    # Landroid/os/PersistableBundle;

    .line 689
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_22

    .line 691
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_8
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1, p0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {v1, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    .line 692
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_18

    .line 693
    :try_start_14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_22

    .line 692
    return-object v1

    .line 690
    :catchall_18
    move-exception v1

    :try_start_19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v2

    :try_start_1e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "extras":Landroid/os/PersistableBundle;
    :goto_21
    throw v1
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_22

    .line 693
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "extras":Landroid/os/PersistableBundle;
    :catch_22
    move-exception v0

    .line 694
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist transformToPersistableBundle([B)Landroid/os/PersistableBundle;
    .registers 6
    .param p1, "extras"    # [B

    .line 721
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 722
    return-object v0

    .line 724
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_1b

    .line 725
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_9
    invoke-static {v1}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    .line 726
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1b

    .line 725
    return-object v2

    .line 724
    :catchall_11
    move-exception v2

    :try_start_12
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v3

    :try_start_17
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/content/pm/AppSearchShortcutInfo;
    .end local p1    # "extras":[B
    :goto_1a
    throw v2
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1b

    .line 726
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Landroid/content/pm/AppSearchShortcutInfo;
    .restart local p1    # "extras":[B
    :catch_1b
    move-exception v1

    .line 727
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method


# virtual methods
.method public blacklist toShortcutInfo(I)Landroid/content/pm/ShortcutInfo;
    .registers 42
    .param p1, "userId"    # I

    .line 363
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/content/pm/AppSearchShortcutInfo;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, "packageName":Ljava/lang/String;
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 365
    .local v32, "activityString":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v32, :cond_11

    .line 366
    move-object v5, v1

    goto :goto_16

    :cond_11
    invoke-static/range {v32 .. v32}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    move-object v5, v2

    .line 373
    .local v5, "activity":Landroid/content/ComponentName;
    :goto_16
    const/4 v6, 0x0

    .line 374
    .local v6, "icon":Landroid/graphics/drawable/Icon;
    const-string/jumbo v2, "shortLabel"

    invoke-virtual {v0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 375
    .local v7, "shortLabel":Ljava/lang/String;
    const-string/jumbo v2, "longLabel"

    invoke-virtual {v0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 376
    .local v10, "longLabel":Ljava/lang/String;
    const-string v2, "disabledMessage"

    invoke-virtual {v0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 377
    .local v13, "disabledMessage":Ljava/lang/String;
    const-string v2, "categories"

    invoke-virtual {v0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 378
    .local v33, "categories":[Ljava/lang/String;
    if-nez v33, :cond_36

    .line 379
    move-object/from16 v16, v1

    goto :goto_41

    :cond_36
    new-instance v2, Landroid/util/ArraySet;

    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v16, v2

    .line 380
    .local v16, "categoriesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_41
    const-string/jumbo v2, "intents"

    invoke-virtual {v0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 381
    .local v34, "intentsStrings":[Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v34, :cond_50

    .line 382
    new-array v3, v2, [Landroid/content/Intent;

    move-object/from16 v17, v3

    goto :goto_6b

    .line 392
    :cond_50
    nop

    .line 382
    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v8, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v8, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda2;-><init>()V

    .line 392
    invoke-interface {v3, v8}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/Intent;

    move-object/from16 v17, v3

    :goto_6b
    move-object/from16 v3, v17

    .line 393
    .local v3, "intents":[Landroid/content/Intent;
    const-string/jumbo v8, "intentPersistableExtras"

    invoke-virtual {v0, v8}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyBytesArray(Ljava/lang/String;)[[B

    move-result-object v35

    .line 394
    .local v35, "intentExtrasesBytes":[[B
    if-nez v35, :cond_78

    .line 395
    move-object v8, v1

    goto :goto_91

    .line 396
    :cond_78
    nop

    .line 395
    invoke-static/range {v35 .. v35}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda3;

    invoke-direct {v9, v0}, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda3;-><init>(Landroid/content/pm/AppSearchShortcutInfo;)V

    .line 396
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda4;

    invoke-direct {v9}, Landroid/content/pm/AppSearchShortcutInfo$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/os/Bundle;

    :goto_91
    nop

    .line 397
    .local v8, "intentExtrases":[Landroid/os/Bundle;
    if-eqz v3, :cond_b6

    .line 398
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_95
    array-length v11, v3

    if-ge v9, v11, :cond_b6

    .line 399
    aget-object v11, v3, v9

    .line 400
    .local v11, "intent":Landroid/content/Intent;
    if-eqz v11, :cond_b3

    if-eqz v8, :cond_b3

    array-length v12, v8

    if-le v12, v9, :cond_b3

    aget-object v12, v8, v9

    if-eqz v12, :cond_b3

    aget-object v12, v8, v9

    .line 401
    invoke-virtual {v12}, Landroid/os/Bundle;->size()I

    move-result v12

    if-nez v12, :cond_ae

    .line 402
    goto :goto_b3

    .line 404
    :cond_ae
    aget-object v12, v8, v9

    invoke-virtual {v11, v12}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 398
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_b3
    :goto_b3
    add-int/lit8 v9, v9, 0x1

    goto :goto_95

    .line 407
    .end local v9    # "i":I
    :cond_b6
    const-string/jumbo v9, "person"

    invoke-virtual {v0, v9}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyDocumentArray(Ljava/lang/String;)[Landroid/app/appsearch/GenericDocument;

    move-result-object v9

    invoke-static {v9}, Landroid/content/pm/AppSearchShortcutInfo;->parsePerson([Landroid/app/appsearch/GenericDocument;)[Landroid/app/Person;

    move-result-object v28

    .line 408
    .local v28, "persons":[Landroid/app/Person;
    const-string/jumbo v9, "locusId"

    invoke-virtual {v0, v9}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 409
    .local v9, "locusIdString":Ljava/lang/String;
    if-nez v9, :cond_cb

    goto :goto_d0

    :cond_cb
    new-instance v1, Landroid/content/LocusId;

    invoke-direct {v1, v9}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    :goto_d0
    move-object/from16 v29, v1

    .line 410
    .local v29, "locusId":Landroid/content/LocusId;
    const-string v1, "extras"

    invoke-virtual {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 411
    .local v1, "extrasByte":[B
    invoke-direct {v0, v1}, Landroid/content/pm/AppSearchShortcutInfo;->transformToPersistableBundle([B)Landroid/os/PersistableBundle;

    move-result-object v19

    .line 412
    .local v19, "extras":Landroid/os/PersistableBundle;
    const-string v11, "flags"

    invoke-virtual {v0, v11}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/content/pm/AppSearchShortcutInfo;->parseFlags([Ljava/lang/String;)I

    move-result v22

    .line 413
    .local v22, "flags":I
    const-string/jumbo v11, "iconResId"

    invoke-virtual {v0, v11}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyLong(Ljava/lang/String;)J

    move-result-wide v11

    long-to-int v11, v11

    .line 414
    .local v11, "iconResId":I
    const-string/jumbo v12, "iconResName"

    invoke-virtual {v0, v12}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 415
    .local v24, "iconResName":Ljava/lang/String;
    const-string/jumbo v12, "iconUri"

    invoke-virtual {v0, v12}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 416
    .local v26, "iconUri":Ljava/lang/String;
    const-string v12, "disabledReason"

    invoke-virtual {v0, v12}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 417
    .local v36, "disabledReasonString":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_113

    .line 418
    invoke-virtual {v0, v12}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    goto :goto_115

    .line 419
    :cond_113
    move/from16 v27, v2

    :goto_115
    nop

    .line 420
    .local v27, "disabledReason":I
    nop

    .line 421
    const-string v2, "capabilityBindings"

    invoke-virtual {v0, v2}, Landroid/content/pm/AppSearchShortcutInfo;->getPropertyStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/AppSearchShortcutInfo;->parseCapabilityBindings([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v31

    .line 422
    .local v31, "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    move-object v2, v1

    .end local v1    # "extrasByte":[B
    .local v2, "extrasByte":[B
    new-instance v1, Landroid/content/pm/ShortcutInfo;

    .line 423
    move-object/from16 v17, v3

    .end local v3    # "intents":[Landroid/content/Intent;
    .local v17, "intents":[Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/pm/AppSearchShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-virtual {v0}, Landroid/content/pm/AppSearchShortcutInfo;->getCreationTimestampMillis()J

    move-result-wide v20

    const/16 v25, 0x0

    const/16 v30, 0x0

    move-object v12, v8

    .end local v8    # "intentExtrases":[Landroid/os/Bundle;
    .local v12, "intentExtrases":[Landroid/os/Bundle;
    const/4 v8, 0x0

    move-object v14, v9

    .end local v9    # "locusIdString":Ljava/lang/String;
    .local v14, "locusIdString":Ljava/lang/String;
    const/4 v9, 0x0

    move/from16 v23, v11

    .end local v11    # "iconResId":I
    .local v23, "iconResId":I
    const/4 v11, 0x0

    move-object v15, v12

    .end local v12    # "intentExtrases":[Landroid/os/Bundle;
    .local v15, "intentExtrases":[Landroid/os/Bundle;
    const/4 v12, 0x0

    move-object/from16 v18, v14

    .end local v14    # "locusIdString":Ljava/lang/String;
    .local v18, "locusIdString":Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v37, v15

    .end local v15    # "intentExtrases":[Landroid/os/Bundle;
    .local v37, "intentExtrases":[Landroid/os/Bundle;
    const/4 v15, 0x0

    move-object/from16 v38, v18

    .end local v18    # "locusIdString":Ljava/lang/String;
    .local v38, "locusIdString":Ljava/lang/String;
    const v18, 0x7fffffff

    move-object/from16 v39, v2

    move/from16 v2, p1

    .end local v2    # "extrasByte":[B
    .local v39, "extrasByte":[B
    invoke-direct/range {v1 .. v31}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V

    .line 422
    return-object v1
.end method
