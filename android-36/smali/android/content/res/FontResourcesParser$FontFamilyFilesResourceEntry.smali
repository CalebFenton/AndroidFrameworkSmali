.class public final Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParser.java"

# interfaces
.implements Landroid/content/res/FontResourcesParser$FamilyResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/FontResourcesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFamilyFilesResourceEntry"
.end annotation


# instance fields
.field private final greylist-max-o mEntries:[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;


# direct methods
.method public constructor greylist-max-o <init>([Landroid/content/res/FontResourcesParser$FontFileResourceEntry;)V
    .registers 2
    .param p1, "entries"    # [Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->mEntries:[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    .line 135
    return-void
.end method


# virtual methods
.method public greylist-max-o getEntries()[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->mEntries:[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    return-object v0
.end method
