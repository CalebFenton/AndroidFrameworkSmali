.class public Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;
.super Ljava/lang/Object;
.source "PeopleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PeopleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NameToPrefixMap"
.end annotation


# instance fields
.field blacklist mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/PeopleHelper;Ljava/util/Map;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/widget/PeopleHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p2, p0, Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;->mMap:Ljava/util/Map;

    .line 235
    return-void
.end method


# virtual methods
.method public blacklist getPrefix(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 242
    iget-object v0, p0, Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;->mMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
