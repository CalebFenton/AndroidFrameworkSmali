.class public final Landroid/provider/Contacts$Presence;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$PresenceColumns;
.implements Landroid/provider/Contacts$PeopleColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Presence"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o PERSON_ID:Ljava/lang/String; = "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1616
    nop

    .line 1617
    const-string v0, "content://contacts/presence"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Presence;->CONTENT_URI:Landroid/net/Uri;

    .line 1616
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final greylist-max-o getPresenceIconResourceId(I)I
    .registers 2
    .param p0, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1636
    packed-switch p0, :pswitch_data_18

    .line 1652
    const v0, 0x108006a

    return v0

    .line 1638
    :pswitch_7
    const v0, 0x108006b

    return v0

    .line 1645
    :pswitch_b
    const v0, 0x1080068

    return v0

    .line 1642
    :pswitch_f
    const v0, 0x1080067

    return v0

    .line 1648
    :pswitch_13
    const v0, 0x1080069

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_f
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method public static final greylist-max-o setPresenceIcon(Landroid/widget/ImageView;I)V
    .registers 3
    .param p0, "icon"    # Landroid/widget/ImageView;
    .param p1, "serverStatus"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1665
    invoke-static {p1}, Landroid/provider/Contacts$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1666
    return-void
.end method
