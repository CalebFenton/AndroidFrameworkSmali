.class public final Landroid/provider/Contacts$Phones;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$PhonesColumns;
.implements Landroid/provider/Contacts$PeopleColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phones"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CONTENT_FILTER_URL:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/phone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PERSON_ID:Ljava/lang/String; = "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 988
    nop

    .line 989
    const-string v0, "content://contacts/phones"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 996
    nop

    .line 997
    const-string v0, "content://contacts/phones/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    .line 996
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 980
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "labelArray"    # [Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 955
    const-string v0, ""

    .line 957
    .local v0, "display":Ljava/lang/CharSequence;
    if-eqz p1, :cond_1f

    .line 958
    if-eqz p3, :cond_8

    move-object v1, p3

    goto :goto_13

    .line 959
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    :goto_13
    nop

    .line 962
    .local v1, "labels":[Ljava/lang/CharSequence;
    add-int/lit8 v2, p1, -0x1

    :try_start_16
    aget-object v2, v1, v2
    :try_end_18
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_16 .. :try_end_18} :catch_1a

    .line 965
    .end local v0    # "display":Ljava/lang/CharSequence;
    .local v2, "display":Ljava/lang/CharSequence;
    move-object v0, v2

    goto :goto_1e

    .line 963
    .end local v2    # "display":Ljava/lang/CharSequence;
    .restart local v0    # "display":Ljava/lang/CharSequence;
    :catch_1a
    move-exception v2

    .line 964
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 966
    .end local v1    # "labels":[Ljava/lang/CharSequence;
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1e
    goto :goto_26

    .line 967
    :cond_1f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 968
    move-object v0, p2

    .line 971
    :cond_26
    :goto_26
    return-object v0
.end method
