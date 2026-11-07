.class public final Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StructuredPostal"
.end annotation


# static fields
.field public static final whitelist CITY:Ljava/lang/String; = "data7"

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/postal-address_v2"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/postal-address_v2"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist COUNTRY:Ljava/lang/String; = "data10"

.field public static final whitelist FORMATTED_ADDRESS:Ljava/lang/String; = "data1"

.field public static final whitelist NEIGHBORHOOD:Ljava/lang/String; = "data6"

.field public static final whitelist POBOX:Ljava/lang/String; = "data5"

.field public static final whitelist POSTCODE:Ljava/lang/String; = "data9"

.field public static final whitelist REGION:Ljava/lang/String; = "data8"

.field public static final whitelist STREET:Ljava/lang/String; = "data4"

.field public static final whitelist TYPE_HOME:I = 0x1

.field public static final whitelist TYPE_OTHER:I = 0x3

.field public static final whitelist TYPE_WORK:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 7290
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "postals"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 7273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7274
    return-void
.end method

.method public static final whitelist getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 7382
    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 7383
    return-object p2

    .line 7385
    :cond_9
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v0

    .line 7386
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static final whitelist getTypeLabelResource(I)I
    .registers 2
    .param p0, "type"    # I

    .line 7367
    packed-switch p0, :pswitch_data_14

    .line 7371
    const v0, 0x10408d0

    return v0

    .line 7370
    :pswitch_7
    const v0, 0x10408d2

    return v0

    .line 7369
    :pswitch_b
    const v0, 0x10408d3

    return v0

    .line 7368
    :pswitch_f
    const v0, 0x10408d1

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method
