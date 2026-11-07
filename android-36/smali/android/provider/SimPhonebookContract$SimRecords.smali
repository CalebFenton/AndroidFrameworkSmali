.class public final Landroid/provider/SimPhonebookContract$SimRecords;
.super Ljava/lang/Object;
.source "SimPhonebookContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SimPhonebookContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimRecords"
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/sim-contact_v2"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/sim-contact_v2"

.field public static final whitelist ELEMENTARY_FILE_TYPE:Ljava/lang/String; = "elementary_file_type"

.field public static final whitelist ERROR_NAME_UNSUPPORTED:I = -0x1

.field public static final blacklist EXTRA_ENCODED_NAME_LENGTH:Ljava/lang/String; = "android.provider.extra.ENCODED_NAME_LENGTH"

.field public static final blacklist GET_ENCODED_NAME_LENGTH_METHOD_NAME:Ljava/lang/String; = "get_encoded_name_length"

.field public static final whitelist NAME:Ljava/lang/String; = "name"

.field public static final whitelist PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final whitelist QUERY_ARG_PIN2:Ljava/lang/String; = "android:query-arg-pin2"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECORD_NUMBER:Ljava/lang/String; = "record_number"

.field public static final whitelist SUBSCRIPTION_ID:Ljava/lang/String; = "subscription_id"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    return-void
.end method

.method private static blacklist buildContentUri(II)Landroid/net/Uri$Builder;
    .registers 4
    .param p0, "subscriptionId"    # I
    .param p1, "efType"    # I

    .line 356
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 357
    const-string v1, "com.android.simphonebook"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 358
    const-string/jumbo v1, "subid"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 359
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 360
    invoke-static {p1}, Landroid/provider/SimPhonebookContract;->getEfUriPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 356
    return-object v0
.end method

.method public static whitelist getContentUri(II)Landroid/net/Uri;
    .registers 3
    .param p0, "subscriptionId"    # I
    .param p1, "efType"    # I

    .line 281
    invoke-static {p0, p1}, Landroid/provider/SimPhonebookContract$SimRecords;->buildContentUri(II)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getEncodedNameLength(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .line 340
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string/jumbo v0, "get_encoded_name_length"

    const/4 v1, 0x0

    const-string v2, "com.android.simphonebook"

    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 343
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_2a

    const-string v1, "android.provider.extra.ENCODED_NAME_LENGTH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 346
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 347
    .local v1, "length":I
    if-gez v1, :cond_29

    if-ne v1, v2, :cond_21

    goto :goto_29

    .line 348
    :cond_21
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Provider malfunction: invalid length was returned."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 351
    :cond_29
    :goto_29
    return v1

    .line 344
    .end local v1    # "length":I
    :cond_2a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Provider malfunction: no length was returned."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist getItemUri(III)Landroid/net/Uri;
    .registers 5
    .param p0, "subscriptionId"    # I
    .param p1, "efType"    # I
    .param p2, "recordNumber"    # I

    .line 315
    if-lez p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Invalid recordNumber"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 317
    invoke-static {p0, p1}, Landroid/provider/SimPhonebookContract$SimRecords;->buildContentUri(II)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 318
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 317
    return-object v0
.end method
