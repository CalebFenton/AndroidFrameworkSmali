.class public final Landroid/provider/ContactsContract$CommonDataKinds$Email;
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
    name = "Email"
.end annotation


# static fields
.field public static final whitelist ADDRESS:Ljava/lang/String; = "data1"

.field public static final whitelist CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/email_v2"

.field public static final whitelist CONTENT_LOOKUP_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/email_v2"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DISPLAY_NAME:Ljava/lang/String; = "data4"

.field public static final whitelist ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist ENTERPRISE_CONTENT_LOOKUP_URI:Landroid/net/Uri;

.field public static final whitelist TYPE_HOME:I = 0x1

.field public static final whitelist TYPE_MOBILE:I = 0x4

.field public static final whitelist TYPE_OTHER:I = 0x3

.field public static final whitelist TYPE_WORK:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 7035
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "emails"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 7053
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "lookup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 7092
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 7093
    const-string/jumbo v1, "lookup_enterprise"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->ENTERPRISE_CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 7118
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 7133
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter_enterprise"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 7020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 7174
    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 7175
    return-object p2

    .line 7177
    :cond_9
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v0

    .line 7178
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static final whitelist getTypeLabelResource(I)I
    .registers 2
    .param p0, "type"    # I

    .line 7158
    packed-switch p0, :pswitch_data_18

    .line 7163
    const v0, 0x104039e

    return v0

    .line 7162
    :pswitch_7
    const v0, 0x10403a0

    return v0

    .line 7161
    :pswitch_b
    const v0, 0x10403a1

    return v0

    .line 7160
    :pswitch_f
    const v0, 0x10403a2

    return v0

    .line 7159
    :pswitch_13
    const v0, 0x104039f

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method
