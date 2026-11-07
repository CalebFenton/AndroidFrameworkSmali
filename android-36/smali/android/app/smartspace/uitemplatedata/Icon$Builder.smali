.class public final Landroid/app/smartspace/uitemplatedata/Icon$Builder;
.super Ljava/lang/Object;
.source "Icon.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mContentDescription:Ljava/lang/CharSequence;

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mShouldTint:Z


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/Icon$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/smartspace/uitemplatedata/Icon$Builder;->mShouldTint:Z

    .line 149
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/smartspace/uitemplatedata/Icon;
    .registers 6

    .line 174
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/Icon$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 175
    new-instance v0, Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/Icon$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Landroid/app/smartspace/uitemplatedata/Icon$Builder;->mContentDescription:Ljava/lang/CharSequence;

    iget-boolean v3, p0, Landroid/app/smartspace/uitemplatedata/Icon$Builder;->mShouldTint:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/smartspace/uitemplatedata/Icon;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ZLandroid/app/smartspace/uitemplatedata/Icon-IA;)V

    return-object v0
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)Landroid/app/smartspace/uitemplatedata/Icon$Builder;
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 156
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/Icon$Builder;->mContentDescription:Ljava/lang/CharSequence;

    .line 157
    return-object p0
.end method

.method public whitelist setShouldTint(Z)Landroid/app/smartspace/uitemplatedata/Icon$Builder;
    .registers 2
    .param p1, "shouldTint"    # Z

    .line 165
    iput-boolean p1, p0, Landroid/app/smartspace/uitemplatedata/Icon$Builder;->mShouldTint:Z

    .line 166
    return-object p0
.end method
