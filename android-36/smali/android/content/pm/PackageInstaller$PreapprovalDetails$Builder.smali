.class public final Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller$PreapprovalDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mIcon:Landroid/graphics/Bitmap;

.field private blacklist mLabel:Ljava/lang/CharSequence;

.field private blacklist mLocale:Landroid/icu/util/ULocale;

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 4773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4768
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mBuilderFieldsSet:J

    .line 4773
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 4832
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 4836
    return-void

    .line 4833
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/content/pm/PackageInstaller$PreapprovalDetails;
    .registers 6

    .line 4820
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->checkNotUsed()V

    .line 4821
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mBuilderFieldsSet:J

    .line 4823
    new-instance v0, Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mIcon:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mLocale:Landroid/icu/util/ULocale;

    iget-object v4, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;-><init>(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/icu/util/ULocale;Ljava/lang/String;)V

    .line 4828
    .local v0, "o":Landroid/content/pm/PackageInstaller$PreapprovalDetails;
    return-object v0
.end method

.method public whitelist setIcon(Landroid/graphics/Bitmap;)Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;
    .registers 6
    .param p1, "value"    # Landroid/graphics/Bitmap;

    .line 4779
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->checkNotUsed()V

    .line 4780
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mBuilderFieldsSet:J

    .line 4781
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mIcon:Landroid/graphics/Bitmap;

    .line 4782
    return-object p0
.end method

.method public whitelist setLabel(Ljava/lang/CharSequence;)Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 4789
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->checkNotUsed()V

    .line 4790
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mBuilderFieldsSet:J

    .line 4791
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 4792
    return-object p0
.end method

.method public whitelist setLocale(Landroid/icu/util/ULocale;)Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;
    .registers 6
    .param p1, "value"    # Landroid/icu/util/ULocale;

    .line 4802
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->checkNotUsed()V

    .line 4803
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mBuilderFieldsSet:J

    .line 4804
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mLocale:Landroid/icu/util/ULocale;

    .line 4805
    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 4812
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->checkNotUsed()V

    .line 4813
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mBuilderFieldsSet:J

    .line 4814
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$PreapprovalDetails$Builder;->mPackageName:Ljava/lang/String;

    .line 4815
    return-object p0
.end method
