.class public final Landroid/view/textclassifier/TextClassificationContext$Builder;
.super Ljava/lang/Object;
.source "TextClassificationContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassificationContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mWidgetType:Ljava/lang/String;

.field private greylist-max-o mWidgetVersion:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetType"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mPackageName:Ljava/lang/String;

    .line 121
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetType:Ljava/lang/String;

    .line 122
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/TextClassificationContext;
    .registers 6

    .line 141
    new-instance v0, Landroid/view/textclassifier/TextClassificationContext;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetType:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetVersion:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/textclassifier/TextClassificationContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/TextClassificationContext-IA;)V

    return-object v0
.end method

.method public whitelist setWidgetVersion(Ljava/lang/String;)Landroid/view/textclassifier/TextClassificationContext$Builder;
    .registers 2
    .param p1, "widgetVersion"    # Ljava/lang/String;

    .line 130
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetVersion:Ljava/lang/String;

    .line 131
    return-object p0
.end method
