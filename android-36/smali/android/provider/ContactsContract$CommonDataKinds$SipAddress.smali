.class public final Landroid/provider/ContactsContract$CommonDataKinds$SipAddress;
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
    name = "SipAddress"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/sip_address"

.field public static final whitelist SIP_ADDRESS:Ljava/lang/String; = "data1"

.field public static final whitelist TYPE_HOME:I = 0x1

.field public static final whitelist TYPE_OTHER:I = 0x3

.field public static final whitelist TYPE_WORK:I = 0x2


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 8274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 8310
    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 8311
    return-object p2

    .line 8313
    :cond_9
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$SipAddress;->getTypeLabelResource(I)I

    move-result v0

    .line 8314
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static final whitelist getTypeLabelResource(I)I
    .registers 2
    .param p0, "type"    # I

    .line 8295
    packed-switch p0, :pswitch_data_14

    .line 8299
    const v0, 0x10409d3

    return v0

    .line 8298
    :pswitch_7
    const v0, 0x10409d5

    return v0

    .line 8297
    :pswitch_b
    const v0, 0x10409d6

    return v0

    .line 8296
    :pswitch_f
    const v0, 0x10409d4

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method
