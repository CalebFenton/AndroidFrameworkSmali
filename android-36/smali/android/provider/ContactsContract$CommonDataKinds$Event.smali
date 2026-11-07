.class public final Landroid/provider/ContactsContract$CommonDataKinds$Event;
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
    name = "Event"
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_event"

.field public static final whitelist START_DATE:Ljava/lang/String; = "data1"

.field public static final whitelist TYPE_ANNIVERSARY:I = 0x1

.field public static final whitelist TYPE_BIRTHDAY:I = 0x3

.field public static final whitelist TYPE_OTHER:I = 0x2


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 7938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 7977
    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 7978
    return-object p2

    .line 7980
    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    move-result v0

    .line 7981
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getTypeResource(Ljava/lang/Integer;)I
    .registers 3
    .param p0, "type"    # Ljava/lang/Integer;

    .line 7958
    const v0, 0x10403b5

    if-nez p0, :cond_6

    .line 7959
    return v0

    .line 7961
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 7966
    const v0, 0x10403b4

    return v0

    .line 7964
    :pswitch_11
    const v0, 0x10403b3

    return v0

    .line 7965
    :pswitch_15
    return v0

    .line 7963
    :pswitch_16
    const v0, 0x10403b2

    return v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_11
    .end packed-switch
.end method
