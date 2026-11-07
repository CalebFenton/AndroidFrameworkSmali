.class public Landroid/net/UrlQuerySanitizer$ParameterValuePair;
.super Ljava/lang/Object;
.source "UrlQuerySanitizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UrlQuerySanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParameterValuePair"
.end annotation


# instance fields
.field public whitelist mParameter:Ljava/lang/String;

.field public whitelist mValue:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/UrlQuerySanitizer;
    .param p2, "parameter"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    .line 81
    return-void
.end method
