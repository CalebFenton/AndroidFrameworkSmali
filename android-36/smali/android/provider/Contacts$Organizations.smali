.class public final Landroid/provider/Contacts$Organizations;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$OrganizationColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Organizations"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CONTENT_DIRECTORY:Ljava/lang/String; = "organizations"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "company, title, isprimary ASC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1780
    nop

    .line 1781
    const-string v0, "content://contacts/organizations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    .line 1780
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1757
    const-string v0, ""

    .line 1759
    .local v0, "display":Ljava/lang/CharSequence;
    if-eqz p1, :cond_1a

    .line 1760
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1763
    .local v1, "labels":[Ljava/lang/CharSequence;
    add-int/lit8 v2, p1, -0x1

    :try_start_11
    aget-object v2, v1, v2
    :try_end_13
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_11 .. :try_end_13} :catch_15

    .line 1766
    .end local v0    # "display":Ljava/lang/CharSequence;
    .local v2, "display":Ljava/lang/CharSequence;
    move-object v0, v2

    goto :goto_19

    .line 1764
    .end local v2    # "display":Ljava/lang/CharSequence;
    .restart local v0    # "display":Ljava/lang/CharSequence;
    :catch_15
    move-exception v2

    .line 1765
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 1767
    .end local v1    # "labels":[Ljava/lang/CharSequence;
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_19
    goto :goto_21

    .line 1768
    :cond_1a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1769
    move-object v0, p2

    .line 1772
    :cond_21
    :goto_21
    return-object v0
.end method
