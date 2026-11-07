.class public interface abstract Landroid/location/CountryListener;
.super Ljava/lang/Object;
.source "CountryListener.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/location/Country;",
        ">;"
    }
.end annotation


# virtual methods
.method public blacklist accept(Landroid/location/Country;)V
    .registers 2
    .param p1, "country"    # Landroid/location/Country;

    .line 40
    invoke-interface {p0, p1}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    .line 41
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 29
    check-cast p1, Landroid/location/Country;

    invoke-interface {p0, p1}, Landroid/location/CountryListener;->accept(Landroid/location/Country;)V

    return-void
.end method

.method public abstract greylist onCountryDetected(Landroid/location/Country;)V
.end method
